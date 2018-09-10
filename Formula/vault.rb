class Vault < Formula
  desc "VaultSecures, stores, and tightly controls access to secrets. (Note: This is a custom
  installer that builds from released builds from https://www.vaultproject.io/downloads.html)"
  homepage 'https://vaultproject.io/'
  url 'https://releases.hashicorp.com/vault/0.11.1/vault_0.11.1_darwin_amd64.zip'
  sha256 '88c96123bb476d9a5c6a4517fd122872232eb6aef94ccdfea065bb8e2c9d0bd7'

  def install
    bin.install 'vault'
  end
end
