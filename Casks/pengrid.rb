cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.10"
  sha256 arm:   "7a505a705d487eccd48ed9f6a7dcdfe8a680f1d5b49755d841ee1e570c49f753",
         intel: "3a9a504631b46842cfb1a41c04803a2115dee3e1c4a7c1922b8913d6dfdf6641"

  url "https://pengrid.app/releases/Pengrid-#{version}-#{arch}.dmg"
  name "Pengrid"
  desc "Designed documents your team and your AI agent can edit"
  homepage "https://pengrid.app/"

  livecheck do
    url "https://pengrid.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Pengrid.app"

  zap trash: [
    "~/Library/Application Support/Pengrid",
    "~/Library/Caches/app.pengrid.desktop",
    "~/Library/Caches/app.pengrid.desktop.ShipIt",
    "~/Library/Preferences/app.pengrid.desktop.plist",
    "~/Library/Saved Application State/app.pengrid.desktop.savedState",
  ]
end
