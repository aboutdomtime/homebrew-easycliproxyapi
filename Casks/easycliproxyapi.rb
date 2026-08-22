cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.57"
  sha256 arm:   "879ad0d74370dae80c0d0f0dccf3674b8f452da2dd377a8503d0bb244af5f03f",
         intel: "ddce7f8b55601aec752e099dd61cb9469ca5b35dfa85a3aea898ea165d3d8293"

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
