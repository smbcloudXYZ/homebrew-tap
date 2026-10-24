# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.7.6'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.6/smb-macos-arm64.tar.gz'
      sha256 '70768731c86eb2c295a4c7c11ab1649da86ef9628b5e0c9e1ced79bf36970372'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.6/smb-macos-amd64.tar.gz'
      sha256 'e3dc0bb10fe8f5ea49592ef1fccc78a35852cc36807de416e4f8af8e216f7ac1'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
