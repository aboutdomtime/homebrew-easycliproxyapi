cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.11"
  sha256 arm:   "9e9a036dfc677fb17f97a383305a2168ffdedf5d79cd94a120c9f0819f2ffb91",
         intel: "4a88a3f00aa71dcecec9749d8e0c610b4c1c2f3b98e8363901503475e0ac5fa2"

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
