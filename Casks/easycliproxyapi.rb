cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.8"
  sha256 arm:   "3285c198463f9118f645c1ad2eaa17444cf056afa8d40b277906918a8d0e9cba",
         intel: "e10adb385da72e049bd368e801bdb69460a145f7eebbe094bee72e239164592b"

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
