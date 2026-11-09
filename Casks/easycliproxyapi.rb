cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.94"
  sha256 arm:   "25ae5d24cebec19c3000b6bcc3c42c20e2aee1a7f24a4fea3e4e732f1b059d89",
         intel: "783d3262f50c7dd79fa5ac1a30d99f6702ae9549a94c612f502dfd9d5613d532"

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
