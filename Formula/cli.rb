# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.5.3'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.3/smb-macos-arm64.tar.gz'
      sha256 '5b6b8f6a51e669ea54ceb7cb0ae35320894893e9eed52b27e65db9d2a0431a50'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.3/smb-macos-amd64.tar.gz'
      sha256 'eb50b0d4da762908a85448038ccfb6f8f6cbc65bc3a47eaf1ffb18b26e383fb7'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
