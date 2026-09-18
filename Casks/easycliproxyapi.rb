cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.98"
  sha256 arm:   "111a01a929d0301fd17e448ed1a9fedf5da6cbcae3108e7cf72cbcfc6e6a19ef",
         intel: "1bccc4555aca6fcddff73ec3c3d0a3e919d7263d3e5e3a9ea2387aa6759df271"

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
