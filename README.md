# homebrew-config

```sh
brew update && HOMEBREW_BUNDLE_MAS_SKIP=Xcode brew bundle -d -v
```

Test Brewfile

```sh
HOMEBREW_NO_AUTO_UPDATE=1 brew bundle --file=Brewfile
```

## Tips

You can skip the installation of dependencies by adding space-separated values to one or more of the following environment variables: `HOMEBREW_BUNDLE_BREW_SKIP`, `HOMEBREW_BUNDLE_CASK_SKIP`, `HOMEBREW_BUNDLE_MAS_SKIP`, `HOMEBREW_BUNDLE_WHALEBREW_SKIP`, `HOMEBREW_BUNDLE_TAP_SKIP`.
