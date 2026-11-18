cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.112"
  sha256 arm:   "215e9b86406767ea7adc10a933fc49e7fd42b473c5c07b1e116bf92bd74b0645",
         intel: "d5380405d9854cb741a3e3f46813c7097c4795420e2cb26dd5824bc9b6264707"

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
