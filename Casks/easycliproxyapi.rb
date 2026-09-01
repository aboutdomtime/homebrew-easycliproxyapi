cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.68"
  sha256 arm:   "d9f7cca47382c55a8d2102b0866cc9ee4ffb23e0dca95bfd53f23d545dd17864",
         intel: "990e4465ded17a2a1a92fa3a8765b9bea5a83db0e7fb521911faf29900f0cca8"

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
