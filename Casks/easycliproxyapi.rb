cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.95"
  sha256 arm:   "1f24c8021fcc5c4a53ab3ee9971d960342779d44c4b327c3da81c915db7459eb",
         intel: "3fb72092644560627436cbb219745292c89745b701f884aa6c40a995c4abed71"

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
