cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.74"
  sha256 arm:   "3b83b359c71830fe19f5b415d46ec366ed5ef9474628609c9728f55d12f47f9b",
         intel: "84ed5a1c566a8a9ff8725cb89b613e1398a58ee45a9f20be4608b00798867ac8"

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
