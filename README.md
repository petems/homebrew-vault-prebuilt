# Homebrew Vault Formula

[Homebrew][] formulae for Vault, that uses the [pre-built releases][] rather than building it ourselves.

[homebrew]: http://brew.sh/

[pre-built releases]: https://www.vaultproject.io/downloads.html

## Why not use the core Formula?

The Vault team don't use GitHug tags for their releases.

> Please do note for the future though that even if you see a tag on the GitHub page, that tag may float until we arrive on a final build. So a tag is indicative that a release is coming up, but not necessarily indicative of the final commit/packages. - @jefferai

So, the Brew formula isn't really supported by HashiCorp.

This isn't that big of a deal, but the Vault release past 0.10+ has a UI. When trying to run the UI from the Brew installed Vault, you get an error (as it doesn't get built with the UI flag:)

```
===============
Vault UI is not available in this binary. To get Vault UI do one of the following:

Download an official release
Run make release to create your own release binaries.
Run make dev-ui to create a development binary with the UI.
===============
```

The build process for this isn't fully documented yet (See: https://github.com/hashicorp/vault/issues/4295), so in the mean time, if you want to use the UI, it's best to just use the official releases and just unzip and move to `bin`, rather than try and fix the upstream formula.

## How do I install this formula?

```bash
$ brew tap petems/vault
$ brew install petems/vault-prebuilt/vault
```

Or directly via the URL:

```
brew install https://raw.githubusercontent.com/petems/homebrew-vault-prebuilt/master/Formula/vault.rb
```

## Troubleshooting
First, please run `brew update` and `brew doctor`.

Second, read the [Troubleshooting Checklist](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Troubleshooting.md#troubleshooting).

## More Documentation

`brew help`, `man brew` or check [our documentation](https://github.com/Homebrew/homebrew/tree/master/share/doc/homebrew#readme).
