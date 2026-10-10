cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.31"
  sha256 arm:   "83b837c52ce40a24deb3b56906dbe34c0441885c88f0d010392405f354450fb0",
         intel: "98b05e9cf540e144f76d71646796307563e3c8fc741a89f21ce677a0355d19be"

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
