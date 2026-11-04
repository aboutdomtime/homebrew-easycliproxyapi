cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.73"
  sha256 arm:   "2d44c5401fcc7bb8622375b890fe9623e47644f272f2351ba9b2460b9f79dcb9",
         intel: "490da24feb1254d81f4cb7c1caa271232353b7f621818271cf4cd459adbe723a"

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
