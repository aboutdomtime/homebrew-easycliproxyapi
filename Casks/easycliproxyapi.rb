cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.36"
  sha256 arm:   "ce47fea46bf398c251e728dbbe3ae72e68fbc8b183f205dcbedc3271639f5098",
         intel: "d76bd1164dcf0bd064a01df0eee599209703b1114b1a51e041c70b2e2136aff3"

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
