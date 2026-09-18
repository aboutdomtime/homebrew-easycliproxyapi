cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.97"
  sha256 arm:   "02cdadd788efd07364b16a9ccfafb155c4ff3ded7f60e909f3a267ee69206b28",
         intel: "e522bab42d195494fec239291768d44ce4ea86a30963b05639b1b86901031e79"

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
