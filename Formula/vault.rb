class Vault < Formula
  VAULT_VERSION = "1.2.3".freeze

  desc "Installs Vault from pre-built binaries"
  homepage "https://vaultproject.io/downloads.html"
  url "https://releases.hashicorp.com/vault/#{VAULT_VERSION}/vault_#{VAULT_VERSION}_darwin_amd64.zip"
  version VAULT_VERSION
  sha256 '5a5cdd19c22dd5b44d2dc212c84f7dbdb63769bb3d89774136a54db1cceb59d2'

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
