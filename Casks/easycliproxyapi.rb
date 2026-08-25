cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.62"
  sha256 arm:   "5707828b76e7abc30ce94ad3a14aed35ec4b04b69dc70e6417dbd57b378cb822",
         intel: "7d0e12c82bb5f8afea088e12cbaefd5e0e7d051771427550fa26a215711af727"

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
