# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.6.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.6.0/smb-macos-arm64.tar.gz'
      sha256 'a1f2bd748df6c2cb41cd874a13d2b1634a4ed6096bf760a30bef9f624b5a37ef'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.6.0/smb-macos-amd64.tar.gz'
      sha256 '7c4b1fd35f6f6e899241fd33ef6cce5f06dc84a24f79040ddbfd3b1769ae2bfe'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
