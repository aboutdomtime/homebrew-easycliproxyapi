cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.2"
  sha256 arm:   "dad5d32a72f62a32252cf5b9340e18292fc6eb399d1cd01a1671fc735683d86f",
         intel: "496c6b0983a7e392d21b521d6436f519fd4b24069446a06b6519067328c008ee"

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
