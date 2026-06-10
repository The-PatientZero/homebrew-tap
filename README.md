# homebrew-tap

Homebrew tap for [The-PatientZero](https://github.com/The-PatientZero)'s apps.

## Install

```bash
brew install --cask The-PatientZero/tap/yank
```

## Casks

| Cask | App | Source |
|------|-----|--------|
| `yank` | [Yank](https://getyank.vercel.app/) — fast, private clipboard manager | [The-PatientZero/yank](https://github.com/The-PatientZero/yank) |

## Releasing

The cask's `version` and `sha256` are updated by
[`scripts/update_homebrew_cask.sh`](https://github.com/The-PatientZero/yank/blob/main/scripts/update_homebrew_cask.sh)
in the app repo after each DMG release; push the resulting commit here. Yank updates itself
in-app (`auto_updates true`), so the cask only needs to track releases for fresh installs.
