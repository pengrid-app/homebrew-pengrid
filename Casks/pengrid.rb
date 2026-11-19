cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.11"
  sha256 arm:   "8158ad72198c8c2ac0c7618361bc8a6861d3f1e0b8d172a6f188032c896fa8b7",
         intel: "a2ec182db1764fd75dfc0f70dd7dceed575b3cdd9fcc216edf0fd1e225eda064"

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
