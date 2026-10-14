cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.37"
  sha256 arm:   "641d41fb923131ec8e27d0fdcd2856146afdfb42ee18c234f86ae9efa706b340",
         intel: "1c1c40ed4fe25192037f923590304604287478abbc88e6b07db4e63be879350e"

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
