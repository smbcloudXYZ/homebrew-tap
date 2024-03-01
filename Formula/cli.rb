class Cli < Formula
  desc 'CLI interface to access SmbPndk.'
  homepage 'https://github.com/smbpndk/smbpndk-cli'
  url 'https://github.com/smbpndk/smbpndk-cli/releases/download/v0.2.0/smb-0.2.0-x86_64-apple-darwin.tar.gz'
  sha256 '623788f5ba8ee77c06d577de4bbc74c667de6a1a'
  version '0.2.0'

  def install
    bin.install 'smb'
  end
end
