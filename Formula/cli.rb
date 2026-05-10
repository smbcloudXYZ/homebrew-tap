# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.0/smb-macos-arm64.tar.gz'
      sha256 'fc5fc0d495e625c3683dd211ebbd6ec5d4fc8f3822ca063e2ebc03d653ed8f43'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.0/smb-macos-amd64.tar.gz'
      sha256 '58d114f3a0cd8536126f33dc154cae547ba890113ffc01a93107d7dde3c72601'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
