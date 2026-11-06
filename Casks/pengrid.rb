cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "bae849d146744ff91250acce57b09de15f0842ae199d85216c8f9ee9161d2c79",
         intel: "264b26ee1a5a5a66b00cb230ae1701881858f888a13b44f6bc651de3eb427670"

  url "https://pengrid.app/releases/Pengrid-#{version}-#{arch}.dmg"
  name "Pengrid"
  desc "Designed documents your team and your AI agent can edit"
  homepage "https://pengrid.app/"

  livecheck do
    url "https://pengrid.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Pengrid.app"

  zap trash: [
    "~/Library/Application Support/Pengrid",
    "~/Library/Caches/app.pengrid.desktop",
    "~/Library/Caches/app.pengrid.desktop.ShipIt",
    "~/Library/Preferences/app.pengrid.desktop.plist",
    "~/Library/Saved Application State/app.pengrid.desktop.savedState",
  ]
end
