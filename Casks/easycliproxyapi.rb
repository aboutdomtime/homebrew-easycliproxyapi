cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.73"
  sha256 arm:   "dd005cb7b7fbf463011f693936e2aa8a1d1868be432a4c5b7c6d5d9056886400",
         intel: "5f913fe53170df9fc8dd00a0bf9caa8c11402cf037703d8538caa631c6fd8345"

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
