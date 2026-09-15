cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.96"
  sha256 arm:   "32bfdfb36cdef98d9a61eb5d41a1f1ba34d0ad210d6a385451a93253bfc5476f",
         intel: "c5d9030916faa2f4c26219c8b417a93296b16a2ced4df14f0512d1dfb6906935"

  url "https://github.com/router-for-me/EasyCLIProxyAPI/releases/download/v#{version}/EasyCLIProxyAPI-v#{version}-Darwin-#{arch}.dmg"
  name "EasyCLIProxyAPI"
  desc "Desktop GUI for CLIProxyAPI and AI-agent configuration"
  homepage "https://github.com/router-for-me/EasyCLIProxyAPI"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "EasyCLIProxyAPI.app"
end
