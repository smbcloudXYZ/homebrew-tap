# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.7.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.1/smb-macos-arm64.tar.gz'
      sha256 '40086dcbbb1421441224fee687dcd244cd06fae603ce9723bea8dcf1aaeb899f'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.1/smb-macos-amd64.tar.gz'
      sha256 '70eababf9690b716786ca681b18a068d67cc1465b7d3b89f655c41f47ccebd19'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
