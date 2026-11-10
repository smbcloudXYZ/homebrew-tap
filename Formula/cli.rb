# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '1.2.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.2.0/smb-macos-arm64.tar.gz'
      sha256 '241e4f108ae029ab3556bb23d3fb01d12820faadcf746250efd6d41c931dd483'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.2.0/smb-macos-amd64.tar.gz'
      sha256 '601e8db8bf9679be645f3f7028176f5a0b112b392cd11528f816ac6ab044c4b0'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
