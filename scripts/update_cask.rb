#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "json"
require "net/http"
require "open3"
require "pathname"
require "tempfile"
require "uri"

ROOT = Pathname.new(__dir__).parent
CONFIG_PATH = ROOT.join(".github", "brew-tap-publisher.json")

def github_token
  token = ENV["GITHUB_TOKEN"]
  return token unless token.nil? || token.empty?

  stdout, _stderr, status = Open3.capture3("gh", "auth", "token")
  status.success? ? stdout.strip : nil
rescue Errno::ENOENT
  nil
end

def fetch(uri, redirects: 5)
  raise "too many redirects for #{uri}" if redirects.negative?

  request = Net::HTTP::Get.new(uri)
  request["Accept"] = "application/vnd.github+json"
  request["User-Agent"] = "brew-tap-publisher"
  token = github_token
  request["Authorization"] = "Bearer #{token}" if token && !token.empty? && uri.host == "api.github.com"

  Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https") do |http|
    response = http.request(request)
    case response
    when Net::HTTPSuccess
      response
    when Net::HTTPRedirection
      location = response["location"]
      raise "redirect without location for #{uri}" if location.nil? || location.empty?

      fetch(URI.join(uri, location), redirects: redirects - 1)
    else
      raise "GET #{uri} failed: #{response.code} #{response.message}"
    end
  end
end

def sha256(asset)
  digest = asset["digest"].to_s
  return digest.delete_prefix("sha256:") if digest.start_with?("sha256:")

  Tempfile.create do |file|
    file.binmode
    file.write(fetch(URI(asset.fetch("browser_download_url"))).body)
    file.flush
    Digest::SHA256.file(file.path).hexdigest
  end
end

def render_cask(config, version, arm_sha256, intel_sha256)
  <<~RUBY
    cask #{config.fetch("cask").inspect} do
      arch arm: "aarch64", intel: "amd64"

      version #{version.inspect}
      sha256 arm:   #{arm_sha256.inspect},
             intel: #{intel_sha256.inspect}

      url "https://github.com/#{config.fetch("repo")}/releases/download/v\#{version}/EasyCLIProxyAPI-v\#{version}-Darwin-\#{arch}.dmg"
      name "EasyCLIProxyAPI"
      desc #{config.fetch("desc").inspect}
      homepage #{config.fetch("homepage").inspect}

      livecheck do
        url :url
        strategy :github_latest
      end

      auto_updates true
      depends_on macos: :high_sierra

      app #{config.fetch("app").inspect}
    end
  RUBY
end

config = JSON.parse(CONFIG_PATH.read)
release_uri = URI("https://api.github.com/repos/#{config.fetch("repo")}/releases/latest")
release = JSON.parse(fetch(release_uri).body)
version = release.fetch("tag_name").delete_prefix("v")
assets = release.fetch("assets")

arm_name = format(config.fetch("arm_asset"), version: version)
intel_name = format(config.fetch("intel_asset"), version: version)
arm_asset = assets.find { |asset| asset.fetch("name") == arm_name }
intel_asset = assets.find { |asset| asset.fetch("name") == intel_name }
raise "missing release asset #{arm_name}" unless arm_asset
raise "missing release asset #{intel_name}" unless intel_asset

cask_path = ROOT.join("Casks", "#{config.fetch("cask")}.rb")
cask_path.write(render_cask(config, version, sha256(arm_asset), sha256(intel_asset)))
puts "Updated #{cask_path.relative_path_from(ROOT)} to v#{version}"
