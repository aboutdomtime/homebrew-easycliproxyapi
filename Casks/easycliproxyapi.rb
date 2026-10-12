cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.33"
  sha256 arm:   "022529e3a6646b85590a7fd7924d26c3fddb81b6a3e4c6e32e627176233398dd",
         intel: "31e99645369febe36fe71acd4711f897f009377c656a9ad0f611577998471c38"

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
