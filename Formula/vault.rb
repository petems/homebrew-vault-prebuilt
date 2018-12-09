class Vault < Formula
  desc "VaultSecures, stores, and tightly controls access to secrets. (Note: This is a custom
  installer that builds from released builds from https://www.vaultproject.io/downloads.html)"
  homepage 'https://vaultproject.io/'
  url 'https://releases.hashicorp.com/vault/0.11.5/vault_0.11.5_darwin_amd64.zip'
  sha256 '58630a89ed1657814fcd1e00226db83479e10b0019b118d125a78b02a7d15ac5'

  def install
    bin.install 'vault'
  end
end
