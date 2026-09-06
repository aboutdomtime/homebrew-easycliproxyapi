cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.75"
  sha256 arm:   "e7f43888977570f991d796794769e76fb967afeb11bec2b4ddf327edf2e5676c",
         intel: "8ad4ccf58105f72a21a36e5d251d815f778ba3747eb95425de4dd42b6d21aa41"

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
