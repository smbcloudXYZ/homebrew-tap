# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.1/smb-macos-arm64.tar.gz'
      sha256 '471cf2ee457ad343a08f6548de5b78fccff4d8dc3057bd4ba3c5d6eeb19fb350'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.1/smb-macos-amd64.tar.gz'
      sha256 '3d8ae2daa04f0a7adc55b359b7e37a10ecd67b4bd2580084edaa5bfd5bba7444'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
