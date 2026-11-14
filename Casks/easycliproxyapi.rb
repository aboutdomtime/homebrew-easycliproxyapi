cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.105"
  sha256 arm:   "4025e30aaca1a63eae1891811cf7241152dae540847f91d1d6b534c1fda66d9f",
         intel: "e7207c5474385e11d2cf70cabb47afe0719cdfa300943be99942ceab6fb40954"

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
