cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.3.6"
  sha256 arm:   "d85a602f4d35b2ce9c7744bba9ec8d6df68cf85c90c1cd4059f322ed6b5db13f",
         intel: "caa124fefb64aac57558a3e880a5f9b387705a40d73fbcc86c76e79f2d8bfd90"

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
