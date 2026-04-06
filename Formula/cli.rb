# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.36'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.36/smb-macos-arm64.tar.gz'
      sha256 'b799856bca8f7648dfccae929ddf3c158cb82c8ad2a37b759d42e6c5f9c71fea'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.36/smb-macos-amd64.tar.gz'
      sha256 '49741d6ae841460f7d34320d2f61770954c999614c9450672517122a6ebbc58f'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
