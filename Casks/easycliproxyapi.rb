cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.79"
  sha256 arm:   "4c48f958fed053c2e8c67e4c24178ff4280909c7d9b3d6f5c48ec97d0086b8be",
         intel: "34768f337c56b888dba41e32d318988c7623394f9937ce48b5b3fa175efc7872"

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
