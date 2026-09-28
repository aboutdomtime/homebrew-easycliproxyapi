cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.10"
  sha256 arm:   "83ee96e145ca5df894004d738c3e2ab7bd889d5bdc9aaaf4387b571106bfef44",
         intel: "7eb34838323a7e4359f9760cfdcb2bf32c7ab77a5f61b2b52ed8a56dae539a02"

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
