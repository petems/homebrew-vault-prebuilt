class Vault < Formula
  VAULT_VERSION = "1.1.0".freeze

  desc "Installs Vault from pre-built binaries"
  homepage "https://vaultproject.io/downloads.html"
  url "https://releases.hashicorp.com/vault/#{VAULT_VERSION}/vault_#{VAULT_VERSION}_darwin_amd64.zip"
  version VAULT_VERSION
  sha256 'b7b43c0a5fa93e04ec314b7cf6bd2f113a8943ee8cc059aa6d7bf3cd7b56181d'

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
