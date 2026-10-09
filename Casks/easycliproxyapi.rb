cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.29"
  sha256 arm:   "dd84696254c15e07c3947e4ed87d90674c53f93a8f275912b846485e5a161200",
         intel: "407aded1d7a39505a5ab10e0bc69e7615262ceb5ad91f1b8d5306edb9785d1e2"

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
