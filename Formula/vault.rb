class Vault < Formula
  desc "VaultSecures, stores, and tightly controls access to secrets. (Note: This is a custom
  installer that builds from released builds from https://www.vaultproject.io/downloads.html)"
  homepage 'https://vaultproject.io/'
  url 'https://releases.hashicorp.com/vault/0.10.2/vault_0.10.2_darwin_amd64.zip'
  sha256 '1bdc0f9c5d3e2794a8809ca6613b854889117efebef21d8fbcd674e6d8a882a5'

  def install
    bin.install 'vault'
  end
end
