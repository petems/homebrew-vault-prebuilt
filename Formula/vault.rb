class Vault < Formula
  desc "VaultSecures, stores, and tightly controls access to secrets. (Note: This is a custom
  installer that builds from released builds from https://www.vaultproject.io/downloads.html)"
  homepage 'https://vaultproject.io/'
  url 'https://releases.hashicorp.com/vault/0.10.3/vault_0.10.3_darwin_amd64.zip'
  sha256 'c092bd4d279494daf801eee1905d693ec505fd274e0587c69a64354df66af426'

  def install
    bin.install 'vault'
  end
end
