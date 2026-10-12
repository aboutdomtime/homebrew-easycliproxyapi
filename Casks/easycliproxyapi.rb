cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.32"
  sha256 arm:   "6ede7e7dc34fd832954927d129531da4f61ee8b798fdfb5102868c8a9cd34845",
         intel: "89b88fa07b7b4cba8ba7d91592004f00f3c0b0a84c25dd006b13edc9e80ceb66"

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
