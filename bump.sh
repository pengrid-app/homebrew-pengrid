#!/bin/sh
# Point the cask at a published release: ./bump.sh 0.7.2
# Run after `pnpm desktop:publish` has put the dmgs on https://pengrid.app/releases/. Old versions are pruned
# from the bucket, so a cask that is not bumped stops installing after a few releases.
# Commits the change; push it yourself.
set -eu
v="$1"
cd "$(dirname "$0")"
tmp=$(mktemp -d)
for a in arm64 x64; do
  curl -fsSL -o "$tmp/$a.dmg" "https://pengrid.app/releases/Pengrid-$v-$a.dmg"
done
arm=$(shasum -a 256 "$tmp/arm64.dmg" | cut -d' ' -f1)
intel=$(shasum -a 256 "$tmp/x64.dmg" | cut -d' ' -f1)
rm -rf "$tmp"
sed -i '' -e "s/^  version \".*\"/  version \"$v\"/" \
  -e "s/arm:   \"[0-9a-f]*\"/arm:   \"$arm\"/" \
  -e "s/intel: \"[0-9a-f]*\"/intel: \"$intel\"/" Casks/pengrid.rb
git commit -qam "pengrid $v"
echo "pengrid cask -> $v (committed; push to publish)"
