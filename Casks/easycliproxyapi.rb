cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.34"
  sha256 arm:   "bc981ea27d100f5fb77cb72ff9d564597c5c81825c89dddb3f4bf0725928337e",
         intel: "b6ed4d8f26e6a9cebb2daa34b2df3e7fd831bd46b5cd48ffd40d4033d60c9b87"

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
