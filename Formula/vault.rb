class Vault < Formula
  VAULT_VERSION = "1.3.1".freeze
  VAULT_SHA256  = "23abadfcda33d5dffa238284c68061d6938aaaa11324301c042fe8d00b83fa7f".freeze

  desc "Installs Vault from pre-built binaries"
  homepage "https://vaultproject.io/downloads.html"
  url "https://releases.hashicorp.com/vault/#{VAULT_VERSION}/vault_#{VAULT_VERSION}_darwin_amd64.zip"
  version VAULT_VERSION
  sha256 VAULT_SHA256

  def install
    bin.install 'vault'
  end

  test do
    pid = fork { exec bin/"vault", "server", "-dev" }
    sleep 1
    ENV.append "VAULT_ADDR", "http://127.0.0.1:8200"
    system bin/"vault", "status"
    Process.kill("TERM", pid)
  end
end
