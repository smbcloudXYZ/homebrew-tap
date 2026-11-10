# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '1.1.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.1.2/smb-macos-arm64.tar.gz'
      sha256 '9fdd5b6e05fd7cfd300962a9c522521dd133ff4325598347db2d3e563285c3b5'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.1.2/smb-macos-amd64.tar.gz'
      sha256 'aee344183ee29f2bf79af9df652d521f0838da796da5de47dce4c1b201651847'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
