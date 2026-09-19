cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.99"
  sha256 arm:   "9001a2bebed48a474c77bbdeed9fc646d9ed1f6a67d9a2446d165844cc001abb",
         intel: "cf7dba913005ebe43aa0193b70044c1d8134334a50cb8b049a99d199517d0407"

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
