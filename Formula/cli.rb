# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '1.1.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.1.0/smb-macos-arm64.tar.gz'
      sha256 '74b0f337ffd1d27e145675ceae2dd0a0ce5fc0e5f9d4fa4dac408fa62362a692'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.1.0/smb-macos-amd64.tar.gz'
      sha256 '5d7666a113d36eddf30f7173c46557df76a947a05c7e69aff56ff77c519de66f'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
