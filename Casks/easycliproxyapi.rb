cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.56"
  sha256 arm:   "bf927c2d4215eaa98e0a77dfd7582a6487ab2899044ebc6a9d3b1580a595165b",
         intel: "edba5f6bbcc1d6e66b96fc252fa88178b069327ae95188722fdab5e9e3724f94"

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
