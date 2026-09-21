cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.0"
  sha256 arm:   "865c4a6272a49b43143784086e637767effd5c8e1bc6bace297376fa4b2ddd19",
         intel: "331617ae254cec7e39f997a93ec585078dace7ee884fb4e40d03f90af55f6e8c"

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
