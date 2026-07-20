# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.11'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.11/smb-macos-arm64.tar.gz'
      sha256 'af9a702d71de8b0929c509c662fe8c32a7a88f082d24145e5ed653ddc3cafcff'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.11/smb-macos-amd64.tar.gz'
      sha256 '90c07f05896b53e20e6910e66dd975f8f6d48930f60c924ee130f8a1370349b2'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
