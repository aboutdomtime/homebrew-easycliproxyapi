cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.82"
  sha256 arm:   "f80d158b941275db0cb8a08ecef31c428526134df3d423baf93af202536bccbe",
         intel: "5f50c9cf5f32a8c8728589428be55d9aee8a7dbf3e596a85240e9a28d6c2a498"

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
