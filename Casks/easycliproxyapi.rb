cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.35"
  sha256 arm:   "4198f3b872ff52881f35684f09d7d6bb8149a4bb8cde0e661eff57e6350272d8",
         intel: "dd3b9ef8f400a211a8c77f4f921312ff1049b6c2cf26ee3166bd392ea66f9df1"

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
