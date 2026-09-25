cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.4"
  sha256 arm:   "794f5cc18318c3daa9429457324e6a3700d6d88c0f76489f1b1a379e340e1162",
         intel: "5e1e00b67518e935625794ceb3c0ac945e1dbbf52b1bf8027fe58f71221d9000"

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
