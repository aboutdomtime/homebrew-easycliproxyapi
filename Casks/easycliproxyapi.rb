cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.61"
  sha256 arm:   "c7578da9ba9cbcba0e2cd22fa617e0bec06f7dbeec12f72ea1fe8cc0c59d67bb",
         intel: "ca8300206f1488122cdddc51ae603180bcf12abd9b3314aa2854a195b37cffa0"

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
