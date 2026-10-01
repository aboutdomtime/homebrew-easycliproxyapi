cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.12"
  sha256 arm:   "3961395ace54dca3753a585a4ead99877f4fc5e3e88f2b934131b457ad8df18a",
         intel: "f05755be4723b37490039fbcd49645216dd16a495e8e759594e29450565ce14f"

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
