cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.27"
  sha256 arm:   "7b4d059d4c000611bdb4d9f6156efd2773416c69fcb3bf6983d83a4ce792e25b",
         intel: "f1ab9dcf6743a912a45e07763f923b98a7b73903690906b9a9662c55198ed09c"

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
