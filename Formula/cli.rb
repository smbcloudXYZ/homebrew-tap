# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.36'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.36/smb-macos-arm64.tar.gz'
      sha256 '555098800fadbb39be9a7738c746b4054123a272ebafc14b5bc522af413cb13b'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.36/smb-macos-amd64.tar.gz'
      sha256 '9d11b75f457448242433c240a1a3caaaa4d49198369decbef73bc95f1b296ec3'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
