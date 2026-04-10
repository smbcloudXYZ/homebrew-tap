# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.38'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.38/smb-macos-arm64.tar.gz'
      sha256 '474e84c5101bebacf99006543c39bea5966bb33a1f077b2d82c25e8d84179991'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.38/smb-macos-amd64.tar.gz'
      sha256 '6f2c59d84aec5282287d22be52a7feec45e3b22a2799dcd5d4028a577bd24953'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
