cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.4"
  sha256 arm:   "40fc29a8ff87481ebcf8d6047bb665d1ff1cf0ca65482001bfd20e435577a686",
         intel: "d44cb9dd5d3f00636a6646ce9e780d6e34bd220b61ee56f5f4b4cbfd49e5a91a"

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
