cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.3"
  sha256 arm:   "4556c30f2ca781c38ceea0f4014734a3e3191f0ff956b578a42f2d6b6dcea711",
         intel: "aedc0c4fd8cf215d6126134a2715fa169d24abace20ff70f2c80bd57bd2ad106"

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
