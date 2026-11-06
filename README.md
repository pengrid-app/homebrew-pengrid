# Homebrew tap for Pengrid

[Pengrid](https://pengrid.app) is a desktop app for designed documents that your team and your AI agent can edit.

```sh
brew install --cask karvidsson/pengrid/pengrid
```

The app updates itself after install. For AI agents: see https://pengrid.app/llms.txt for how to connect Pengrid over MCP.

Releasing: after `pnpm desktop:publish`, run `./bump.sh <version>` and push. It downloads both dmgs and updates the version and both sha256 values. Old versions are pruned from the bucket, so a cask that is not bumped stops installing.
