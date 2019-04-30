class Vault < Formula
  VAULT_VERSION = "1.1.2".freeze

  desc "Installs Vault from pre-built binaries"
  homepage "https://vaultproject.io/downloads.html"
  url "https://releases.hashicorp.com/vault/#{VAULT_VERSION}/vault_#{VAULT_VERSION}_darwin_amd64.zip"
  version VAULT_VERSION
  sha256 '0dcc8f5ad55be2a1d485a165f97d7f01a20f95950e32d25a2818ff62328f2f52'

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
