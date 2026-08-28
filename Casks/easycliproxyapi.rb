cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.65"
  sha256 arm:   "42efbcdaae1b2bb066e5547b29ebd13d0ccbb867519ebe18e830b015a44eeed3",
         intel: "66b949f1d8184433c7ab32d78261e6927a562fc6a39f3dde11ed5fead5e51263"

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
