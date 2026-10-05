cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.23"
  sha256 arm:   "4432794637860f2d5ce5ed456ab8586f05e66376ff46a130d5b1dd7c3438d475",
         intel: "c886c2ca1a1de0cdbf8f229e63e36e57960a59e5e4e53afb12b0447fca937a37"

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
