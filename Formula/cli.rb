# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '1.1.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.1.1/smb-macos-arm64.tar.gz'
      sha256 'd00fc55b633519dbd1421ac28319363ade0d2d42caeab845800973e558fb699d'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v1.1.1/smb-macos-amd64.tar.gz'
      sha256 '78bbf880e50a996aa7f43fb7e8de40a1e41af5b5ddda898e0b0654f87acabd82'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
