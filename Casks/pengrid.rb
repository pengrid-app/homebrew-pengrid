cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.12"
  sha256 arm:   "e38a3f1a699d94fa26fda79d13597c571da70411e9a281593236f4e4384724cd",
         intel: "56f7e1ed9f4b10b4eeb9db458dce6ecd60148bf2455cbb22b8bf18b48ebb3d19"

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
