cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.72"
  sha256 arm:   "97a7ecc196bf7904cc1d0819792caaaaffc989dc871e803b38a1df46423c8a11",
         intel: "2c1b96347d97e6e8556a172bb88abac4244e16ffe5f012ce3653ef6c37d9299e"

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
