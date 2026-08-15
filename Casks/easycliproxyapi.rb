cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.23"
  sha256 arm:   "dd3c37b8dd0e8d357f5026ed46f8f5beed458439d6f795b64ca806d7b5f72325",
         intel: "2215584f3f6a90eab36bfc940e5963124beb7775caddee69033b540af5082f63"

  url "https://github.com/router-for-me/EasyCLIProxyAPI/releases/download/v#{version}/EasyCLIProxyAPI-v#{version}-Darwin-#{arch}.dmg"
  name "EasyCLIProxyAPI"
  desc "Desktop GUI for CLIProxyAPI and AI-agent configuration"
  homepage "https://github.com/router-for-me/EasyCLIProxyAPI"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :high_sierra

  app "EasyCLIProxyAPI.app"
end
