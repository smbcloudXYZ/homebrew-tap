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
      sha256 'be574f753ef10201ba15cb839bc27826c934b6e34293b956b3d456b887c850d1'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.0/smb-macos-amd64.tar.gz'
      sha256 '8a667ae66397464a8da6aa19629829a932dec2894cf616ae37813585578c8cfa'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
