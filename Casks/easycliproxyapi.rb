cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.22"
  sha256 arm:   "a70f7e3660d140596e67085f7c3e4d57b3cc679008f536a523c074ac005ab9a4",
         intel: "d6856d0c0909b0f7075fb07809f2851a934355dc9207eac866ffdc858b017e90"

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
