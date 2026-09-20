cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.101"
  sha256 arm:   "8ed2dab7b39bd35449ad3fb75a8d160d459f8d8054fd57bed91aded1bae3724a",
         intel: "0e07f6147f140354b022392b25bbf6fb53f61b2bee9eeff58dd058998205a07f"

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
