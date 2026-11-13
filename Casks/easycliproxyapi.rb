cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.100"
  sha256 arm:   "f1d17cc92bd32323b616d26a0b45036553e069e1ec9bc6b56dcf8c9701b3e050",
         intel: "ecd53f3a510bc475ffd67585c509b5638a54f4e80d00f5dd328f12cd64cd59b5"

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
