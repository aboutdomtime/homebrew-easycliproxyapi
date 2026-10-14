cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.38"
  sha256 arm:   "069b2f3822ffa33171f11f40bbf77f7ca7163ceee33985d5f9602f0fe3a7042c",
         intel: "1056686d7bd2cf5cce195f55209c248023979188687d773e8ce972608ef8c848"

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
