# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.5'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.5/smb-macos-arm64.tar.gz'
      sha256 '8511a9bc4d76e67970ba35be7a60b87fc4b783e55fc1c884a86958424e805178'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.5/smb-macos-amd64.tar.gz'
      sha256 'f0500273847a6f4992b08604c2f21e79c7874e8f003d0f666970db4cb4a39ba5'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
