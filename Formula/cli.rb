# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.39'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.39/smb-macos-arm64.tar.gz'
      sha256 'e1b8c805cdec7587129d9f5918291dab010ee0bbfcc35ee4224d4e720c378a2f'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.39/smb-macos-amd64.tar.gz'
      sha256 '05bbb36acf1c32582bca926c66a03cef47505a9e82cd61daa3b37ea108974b5b'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
