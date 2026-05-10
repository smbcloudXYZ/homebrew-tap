# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.0/smb-macos-arm64.tar.gz'
      sha256 'b9b73c67e3dce45ca39dffaac4837c3e74d784a405dddfc37d72f620db52e942'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.0/smb-macos-amd64.tar.gz'
      sha256 '3b5b5b58b15ab644076781070cb233972041b1b5320a133499d4eb71dd9f8137'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
