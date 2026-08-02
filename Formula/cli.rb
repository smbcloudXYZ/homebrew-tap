# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.5.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.0/smb-macos-arm64.tar.gz'
      sha256 '0b2d3665ab25aec9ad5333807cdb163b2eb554d662a486f2ed506a2c55a66e44'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.0/smb-macos-amd64.tar.gz'
      sha256 'f35bfd399f45c69a78ff84e6e88fd415a7c8088d7296e1f12793f827960b380e'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
