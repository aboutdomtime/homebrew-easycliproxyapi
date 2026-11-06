cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.78"
  sha256 arm:   "eb746629349bc2f10a73868dbf32cbc8a72a55b7c5ce394b0c8051ec842660e5",
         intel: "499be349967f4a8d6d41e05174666ca48dbf5007cb741b1e387f46b9e2ecfc4c"

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
