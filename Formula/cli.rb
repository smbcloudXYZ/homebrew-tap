# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.6'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.6/smb-macos-arm64.tar.gz'
      sha256 'edda87a05422c94695a1b174e8a93546741eabbab463c04afd17b6ca12a773ca'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.6/smb-macos-amd64.tar.gz'
      sha256 '1986e3c7790e4e582180b50487b23dd420449ce73b38f297bd5f27978472390c'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
