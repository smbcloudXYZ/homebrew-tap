# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.12'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.12/smb-macos-arm64.tar.gz'
      sha256 'd5680439e4b0acac668711f914fbe1e7d69121d3d0a70445d0ce114e9fad9601'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.12/smb-macos-amd64.tar.gz'
      sha256 '48f2f3a4c7b73f16f353d2f898c58457125981a72b09194ebb3b4b4c00cdddef'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
