cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.110"
  sha256 arm:   "8f9c59e4ee907caa43f2eee69a827cfcfc95dcda7fc0130690613bd0fb3b1928",
         intel: "badbcec527ea2bc4b049852bb7cc6fe458f7cec8034b53506a6fb24ed2f11b1e"

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
