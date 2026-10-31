# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '1.0.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.0.0/smb-macos-arm64.tar.gz'
      sha256 'c7fc48b47932566d74819078ed889f391a9f81ab72c238bf112fea94d6a6857c'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.0.0/smb-macos-amd64.tar.gz'
      sha256 'd805870c63b3373f2ca82b894da82dbef173470f9dd6b71b9fab4203bb375ee5'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
