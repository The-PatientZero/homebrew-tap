# homebrew-tap

Homebrew tap for [koksalmehmet](https://github.com/koksalmehmet)'s apps.

## Install

```bash
brew install --cask koksalmehmet/tap/yank
```

## Casks

| Cask | App | Source |
|------|-----|--------|
| `yank` | [Yank](https://getyank.vercel.app/) — fast, private clipboard manager | [koksalmehmet/yank](https://github.com/koksalmehmet/yank) |

## Releasing

The cask's `version` and `sha256` are updated by
[`scripts/update_homebrew_cask.sh`](https://github.com/koksalmehmet/yank/blob/main/scripts/update_homebrew_cask.sh)
in the app repo after each DMG release; push the resulting commit here. Yank updates itself
in-app (`auto_updates true`), so the cask only needs to track releases for fresh installs.
