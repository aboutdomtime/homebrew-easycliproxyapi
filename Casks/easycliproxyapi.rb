cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.115"
  sha256 arm:   "4bb515b66e49f42d6f06edd09b6ccd95422ac5ca5a4033e23a4200cb2e871686",
         intel: "e391b0398d3e543622e995a85577a04baac32adb7d75ee2b6c0317dc04005266"

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
