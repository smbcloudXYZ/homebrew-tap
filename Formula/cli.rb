# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.7.3'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.3/smb-macos-arm64.tar.gz'
      sha256 'efd7d9435511e050695fbe976fe2d753bc29851e8af47b3a52b05c60190e05b5'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.3/smb-macos-amd64.tar.gz'
      sha256 'b0b58bd37a91d4fa3b2b533e340cf549f3228d43d660b4161f10075cf55749fb'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
