# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.34'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.34/smb-macos-arm64.tar.gz'
      sha256 'cd4aa5d15c9a73b57ef66e250b31f0d834003c0bc3b20bcaf0526608b4783d6b'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.34/smb-macos-amd64.tar.gz'
      sha256 'c595805ab08e56f852a9c06065856007cbe113658b320dd9ef02c72ff5b5f417'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
