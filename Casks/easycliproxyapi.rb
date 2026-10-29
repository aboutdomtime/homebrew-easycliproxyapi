cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.57"
  sha256 arm:   "23df65ad71b2f78e8baa1139950319d40ca6bc4f2e4e59e495f4723444adfc5e",
         intel: "181191387e6134459c64096b801a604f2ac15760ac328717a4e052759b649b34"

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
