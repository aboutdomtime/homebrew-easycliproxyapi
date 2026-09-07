cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.78"
  sha256 arm:   "3b35cd17ec2bfdf6dfbfb367c8f93767c81a9fbee57017edb0c8b7e47a6f742a",
         intel: "7251e01c1fe3712f387b10be4ac2d05c11e1053bc75352ba4cf51988a779f88a"

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
