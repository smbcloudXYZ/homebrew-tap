class Cli < Formula
  desc "CLI interface to access SmbPndk."
  homepage "https://github.com/smbpndk/smbpndk-cli"
  url "https://github.com/smbpndk/smbpndk-cli/releases/download/v0.2.0/smb-0.2.0-x86_64-apple-darwin.tar.gz"
  sha256 "0907bc5e2f23fe53a1fdc76197f5e69d026c244c27f2dac27645df8322f13ced"
  version "0.2.0"

  def install
    bin.install "smb"
  end
end
