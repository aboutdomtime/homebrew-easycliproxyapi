cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.103"
  sha256 arm:   "acb6e017389e910f7c0f28bb0ad9d3bd93b5208f936b5dd5753bd5790ddd9fa5",
         intel: "c285e44de6ce5855d11c8794c80acbcdd0477ef7162c8736a2a34b37bc1989f8"

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
