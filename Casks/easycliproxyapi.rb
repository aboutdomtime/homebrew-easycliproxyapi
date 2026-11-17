cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.109"
  sha256 arm:   "0f5e3edc5245106354b8682e93d27b71f292fe8dad7d97b08a834ee7a0bf6b54",
         intel: "16794b1b470bbe16f5e31ecb7228489268ba237d88efc5bddaf5f6f92b41b4aa"

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
