# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.7.5'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.5/smb-macos-arm64.tar.gz'
      sha256 'fd26be1b03c4c77e8c72c47957b3b2d757be5e78c29fccfff2b86cf9312ec0cf'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.5/smb-macos-amd64.tar.gz'
      sha256 'c7d3e3d318ee5aec7e3f7fcbd888cc6f082d4c9a5112cc88d7b775aac28dbc1a'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
