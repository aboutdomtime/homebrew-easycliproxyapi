cask "easycliproxyapi" do
  arch arm: "aarch64", intel: "amd64"

  version "0.2.70"
  sha256 arm:   "132922235071df7f5ff8aee09b36ca1e1be12f7967cc6a46430c0212dcfa24ae",
         intel: "a34a7b3cb71555bc29e4b60d7e72582de6afb1e110320f8ee902ee03dc0d8fa2"

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
