# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '1.2.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.2.1/smb-macos-arm64.tar.gz'
      sha256 '47456c69258d43d3e8018149337b2496c988578ac9ac8006c65cfcdbe47d4ec5'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.2.1/smb-macos-amd64.tar.gz'
      sha256 '61db672c782528db2173824ab5ef7b2d2ec19a9ed745e805cdcc04af11ba8222'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
