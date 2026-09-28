cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.9"
  sha256 arm:   "76c0caba062f466581496c8a9108b0512401b3158117b16abaa3d53218e217a2",
         intel: "0b352f5a71d48b5bb04d744fe99f0f6e680cf5b78564d1612f5781869ad422f0"

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
