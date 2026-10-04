cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.20"
  sha256 arm:   "99810d162fd9aa8934a6226454471503aa7cb1d7450f3f48452f9e73422829a6",
         intel: "0f7bea8e7e888c12ee2598fadbd7884dca5f5f9275b36ea9ef3a874d572511bd"

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
