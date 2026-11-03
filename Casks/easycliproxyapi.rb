cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.68"
  sha256 arm:   "b6880200b9d535cade13d583a57280d968155ab5663cd6eff05127c5197a0089",
         intel: "9a5bd37176575cdc02b58e7e1057cb1cb54f062d499b90b990c82da63a27616a"

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
