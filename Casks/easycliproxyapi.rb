cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.30"
  sha256 arm:   "fe32af5c56f5daa30f2b530e36f07c6aefcf8631bf9904c89ec17527591e86ad",
         intel: "a082c4cd4488a17acec01cb420833601baaa1a83d8f2cd78c1e98623c01da2f6"

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
