cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.80"
  sha256 arm:   "61b736cfd4189db0242e94a9914e7bddb394f7bd15e9ef3dfe88b75aeeed028e",
         intel: "9d6ab58d23407be9907d20ec415a1b4cdafd4482604032ccae37323c31a2c2b1"

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
