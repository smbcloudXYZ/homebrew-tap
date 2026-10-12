# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.7.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.2/smb-macos-arm64.tar.gz'
      sha256 'ca2fb4f957365833055c513df7e0f826da2a2cae78a441516172c4ed68835916'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.2/smb-macos-amd64.tar.gz'
      sha256 'bb4c0cf02e8e2337b6237c121a9b62b7725630611d9fdc14a2db003121c9399d'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
