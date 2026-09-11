cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.88"
  sha256 arm:   "fa595edd97b9433f23367b3f2a7e9df348a2576821f6eba8c7fdf003f85ffbb7",
         intel: "970627c07d84c63f2906a288930c8bdc4c18ac61f9d6e95479a4f5e3ea205894"

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
