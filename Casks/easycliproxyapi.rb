cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.76"
  sha256 arm:   "9828b7357350c9afed8f56af778db2a79e91c4e788abb43c75df74eac8ebcb70",
         intel: "0ba78d736a6e35519f017bc61ce398ca001ea7ee5aa0b829e1b0345143e9567e"

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
