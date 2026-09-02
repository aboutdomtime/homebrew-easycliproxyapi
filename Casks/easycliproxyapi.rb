cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.69"
  sha256 arm:   "7012281d0dc96f609727a3e390cdd1316ed0f3da0ebdae4bac911b5f2a161182",
         intel: "6d1146b03f6fa257f4d056ccf8349a65e29923a974b602f02749fd8e370b26af"

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
