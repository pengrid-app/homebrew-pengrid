# Homebrew tap for Pengrid

[Pengrid](https://pengrid.app) is a desktop app for designed documents that your team and your AI agent can edit.

```sh
brew install --cask karvidsson/pengrid/pengrid
```

The app updates itself after install. For AI agents: see https://pengrid.app/llms.txt for how to connect Pengrid over MCP.

Releasing: bump `version` and both `sha256` values in `Casks/pengrid.rb` to the new dmgs at https://pengrid.app/releases/ (see pengrid-app docs/handoff/release.md).
