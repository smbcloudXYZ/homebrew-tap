# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.5.4'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.4/smb-macos-arm64.tar.gz'
      sha256 '3799d2c2d96b4fe057a0b4d98107f656fc94d4e09e716e4f5132467a69ebbbc6'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.4/smb-macos-amd64.tar.gz'
      sha256 '660e9e2f4c1de7d9c99fb0faae2f962384ccee26dd8ec5675cba4d7157816a0f'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
