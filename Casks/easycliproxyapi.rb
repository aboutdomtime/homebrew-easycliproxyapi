cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.64"
  sha256 arm:   "bf8f2d230aaacc085b81d822da6513ea6e19efedebdac0d37d2a0c4f46d92886",
         intel: "9c88f9bbf0305337ed7c0fed1d0dff7210f070820e599ac2312ed9433c20126d"

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
