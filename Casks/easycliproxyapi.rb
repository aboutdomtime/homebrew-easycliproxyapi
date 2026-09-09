cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.81"
  sha256 arm:   "4c341b0899f7131de1def6e1b96f17040be757e79ad0c59903a7a4112dcf48fb",
         intel: "4953c1c76166b22ac12e0e83cb90b741324f69f949aa4c4889281c74c078fd07"

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
