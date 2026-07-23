# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.13'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.13/smb-macos-arm64.tar.gz'
      sha256 'a6c9ea6464aaa938ff5267089cb58692dab2e498bedb504ffecd5df9c96645aa'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.13/smb-macos-amd64.tar.gz'
      sha256 'c8da04353051e6aee6393856625e1ce23be14a7c27b6106acc179b6ae7ed1857'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
