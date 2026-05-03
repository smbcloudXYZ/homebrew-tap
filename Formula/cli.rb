# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.41'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.41/smb-macos-arm64.tar.gz'
      sha256 'e608af50de17374ee09a29530c5fbb4c7053bbac6f69c126d71f12e18e3604e2'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.41/smb-macos-amd64.tar.gz'
      sha256 'f0b6b9c80c47af24819b52f669ecaa47675569ed2636a33c6482f5f26b665739'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
