cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.67"
  sha256 arm:   "0ab2ac7f03cedc116d6c93ad91c61b7657df65a25bde5178f4aab8fd5b5a643b",
         intel: "fa77806cefd4955648b5c6faab3ffef6adb0478a7fa094bb30045080f51aff45"

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
