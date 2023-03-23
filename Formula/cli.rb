class Cli < Formula
  desc "CLI interface to access SmbPndk."
  homepage "https://github.com/smbpndk/smbpndk-cli"
  url "https://github.com/smbpndk/smbpndk-cli/releases/download/v0.2.0/smb-0.2.0-x86_64-apple-darwin.tar.gz"
  sha256 "42e8dc21ae191b4f784dc7efae136f426680be3a1fa7d0af357dffe9d657597b"
  version "0.2.0"

  def install
    bin.install "cli"
  end
end
