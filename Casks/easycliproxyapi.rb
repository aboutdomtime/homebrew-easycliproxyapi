cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.82"
  sha256 arm:   "72bcfada28e85eda8ff9f116d15a13889ee24ca0368dfc67bb17ee85fbba0c39",
         intel: "2a3704f7d1ffa35fc7ad2411f50f54fbaf8bbc23778721a22e8cb418b217733a"

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
