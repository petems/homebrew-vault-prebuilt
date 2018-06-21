class Vault < Formula
  desc "VaultSecures, stores, and tightly controls access to secrets. (Note: This is a custom
  installer that builds from released builds from https://www.vaultproject.io/downloads.html)"
  homepage 'https://vaultproject.io/'
  url 'https://releases.hashicorp.com/vault/0.10.3/vault_0.10.3_darwin_amd64.zip'
  sha256 '7d3675539f54c5c4b16c68eeb754183dcba9bc6f48ed5ecb74254693793a825b'

  def install
    bin.install 'vault'
  end
end
