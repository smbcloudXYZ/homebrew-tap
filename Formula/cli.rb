# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.2/smb-macos-arm64.tar.gz'
      sha256 '3875e7d7cc4461de88820936ca4516206d38daee86255920eafd7ac28b08c309'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.2/smb-macos-amd64.tar.gz'
      sha256 '83a479aca526cdfb09879f88d7bed18d667c7fcb42c1f4321f53e2d442a63899'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
