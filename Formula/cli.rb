# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.7.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.0/smb-macos-arm64.tar.gz'
      sha256 '49c8dfb84d42856652ecb38d099f80442e8bbe62ec3cf2aa62f798f875cee09d'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.7.0/smb-macos-amd64.tar.gz'
      sha256 'fd57fa85ff18303539579b857beb3503efd9947c3fc6390096ba9eeca01d8899'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
