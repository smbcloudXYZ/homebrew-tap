# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.34'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url "https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v#{version}/smb-macos-arm64.tar.gz"
      sha256 'PLACEHOLDER_ARM64_SHA256'
    end
    on_intel do
      url "https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v#{version}/smb-macos-amd64.tar.gz"
      sha256 'PLACEHOLDER_AMD64_SHA256'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
