# hyakt/homebrew-tap

Personal Homebrew tap for distributing CLI tools.

## Publish flow
1. Add or update formulae under `Formula/`.
2. Commit and push to `main`.
3. For binary releases, upload archives to GitHub Releases and point the formula `url`/`sha256` to them.

## Install
```bash
brew tap hyakt/tap
brew install <formula-name>
```

## Update a formula
- Bump `url` to the new release asset.
- Update `sha256` using `shasum -a 256 <file>`.
- Commit and push; users can `brew upgrade <formula-name>`.
