cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.24"
  sha256 arm:   "9ed2ee677e318b95e228711a898a372be5fb66668ca112f9e2fa93c7082dc9e6",
         intel: "e2b8c03d8b9b44e46a6df49b76bb99ff7d023d0920e43c6b9499637b574a9d49"

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
