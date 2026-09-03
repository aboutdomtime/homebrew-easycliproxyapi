cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.71"
  sha256 arm:   "e7421ac251b652f7c3d10b549d2354a6cfbe91f53fb81e1c7727c2fcdf8ffbb6",
         intel: "61655b806ecac8516a2abdd17ae6961ba5f743cb07388c690d4c6490705d27df"

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
