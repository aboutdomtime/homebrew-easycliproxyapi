cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.21"
  sha256 arm:   "94364775293fa0356985198bffe9f9efdab50e15b9b57b481dbc680ebfe472e8",
         intel: "430a5331bba37ae55551af2b860af4b7b34121570caad45b2d526b414ab0f286"

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
