# homebrew-tap

Homebrew tap for [senzalldev](https://senzall.dev) tools.

## emprise

```sh
brew install senzalldev/tap/emprise                  # CLI
brew install --cask senzalldev/tap/emprise-desktop   # Desktop app (macOS)
```

## PounceSQL

Native Azure SQL client for macOS with AI assistant and MCP server.

```sh
brew tap senzalldev/tap
brew install --cask senzalldev/tap/pouncesql
```

**Requires:** `az login` in a terminal before first launch.

Upgrades: `brew upgrade --cask pouncesql`. Taps are updated automatically by each release pipeline.
