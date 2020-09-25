class Vault < Formula
  VAULT_VERSION = "1.5.0".freeze
  VAULT_SHA256  = "12f76f032d6192cc16ea79205c09c7a97635228d92f34568c5938ce1e1514877".freeze

  desc "Installs Vault from pre-built binaries"
  homepage "https://vaultproject.io/downloads.html"
  url "https://releases.hashicorp.com/vault/#{VAULT_VERSION}/vault_#{VAULT_VERSION}_darwin_amd64.zip"
  version VAULT_VERSION
  sha256 VAULT_SHA256

  def install
    fail "homebrew-vault-prebuilt is no longer needed - use the official tap: brew tap hashicorp/tap"
  end
  
end
