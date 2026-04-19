# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.38'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.38/smb-macos-arm64.tar.gz'
      sha256 'b386354e2bb4ad2aec2e29da57e82a6d728dbb7821ae54047d9d856d0b9e25a8'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.38/smb-macos-amd64.tar.gz'
      sha256 'f71e2777cf2c6a69d43981dbbca1bb0043890db64d31c1b19cded2b5e66033da'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
