# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.6.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.6.2/smb-macos-arm64.tar.gz'
      sha256 '4792dafeb9a5b1885f62b95754849306c34fb3471eb72f87ec812dfaba67b04e'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.6.2/smb-macos-amd64.tar.gz'
      sha256 'f957604961147bdc18799637d1d7662b7e7045689396715583bb5c0d72f80d49'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
