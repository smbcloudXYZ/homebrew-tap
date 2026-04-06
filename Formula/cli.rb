# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.35'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.35/smb-macos-arm64.tar.gz'
      sha256 '753742e4f40af98bd3f15633763b4bd7046552284cb1c178c6bc8be2a48a8112'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.35/smb-macos-amd64.tar.gz'
      sha256 '495bf8cdb2b907d5eff6956e7f9a22a5df5de8a122e0dfabe8d1deda614235b6'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
