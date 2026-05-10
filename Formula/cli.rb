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
      sha256 'e3c57478e76d36dd15a272846eea45d40bd4e5ecef2ab376a24bccc108f0a901'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.0/smb-macos-amd64.tar.gz'
      sha256 '0faa4bbf886c85d73e40efa80e11acb0941e67f29ae4702aa002a8f3b27ed0f0'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
