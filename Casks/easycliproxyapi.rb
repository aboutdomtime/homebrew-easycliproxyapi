cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.48"
  sha256 arm:   "f4a9ecadbe6cbab526948e85735263d16dfff3bf18e52648d03cab764996176a",
         intel: "93b1737d192261372e2ad2a63a863ef9f53bebc2c9af763701d515df3fe31732"

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
