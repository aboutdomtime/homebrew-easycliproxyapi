cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.26"
  sha256 arm:   "db1566ee8007e031125a59ec6ce6da46db66a9ca3b9801feed2c12eebb848d1a",
         intel: "56a7cb6cf94ac043726fd0ece40cfdfd940f0fded0eb6553e6124f3a6930e92f"

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
