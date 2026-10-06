cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.25"
  sha256 arm:   "bd8aad7136649e1e1201cf6ec5595027131ffeacfd3127fafa91e720f6a7609e",
         intel: "de873af5d7095fd796985bb0768f6d07cc2d74f7d51e7cb6cba5eb981b0a59fc"

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
