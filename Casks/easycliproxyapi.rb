cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.90"
  sha256 arm:   "48673861384a810bd5c6ff721a6d826e53ea97d6b837227d553a0564a2aac10e",
         intel: "f14b045a5d6482c0f0569b737e15f9c499457f5166066a290f1cc137ba3cd3c9"

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
