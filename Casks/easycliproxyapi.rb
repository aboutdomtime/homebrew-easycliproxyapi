cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.63"
  sha256 arm:   "97aa9886c1b58fad6189e9e12ac93c0cf12b1de9234ae9db9f11f4572cf61d22",
         intel: "9bd00a802622ea113981ca4f1ee60d445c565403bdf1b92022a0c6efc85a3336"

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
