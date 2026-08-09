# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.5.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.1/smb-macos-arm64.tar.gz'
      sha256 '608a4101ef4b46b2ffd0da0589afcab70b062cd386ad74e3250f604b8d7f916c'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.1/smb-macos-amd64.tar.gz'
      sha256 '3e1a272b93d4a627d4a19f15daa40b9055a90a8e5082d21f62a2ecb58da355c3'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
