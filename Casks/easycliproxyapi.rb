cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.100"
  sha256 arm:   "673e863f5282e41bfa39bab4fe0d0e43d662b548336ea2d5fd43f20d105cda9d",
         intel: "cafe05b23b1c36b9b0830da9d0029328108aa146443ff52917400a7195377d07"

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
