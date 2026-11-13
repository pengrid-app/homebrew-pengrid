cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.7"
  sha256 arm:   "1cda1e9d08f8ae6c79c8e3c0a4e6a9de3a35bdcf0d94a03e4a606c5127b8c22a",
         intel: "8922ffe1c5af747483feb6355135f4070d6e46b753aeb9a54563b853d1c52d53"

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
