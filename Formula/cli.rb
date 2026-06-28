# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.7'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.7/smb-macos-arm64.tar.gz'
      sha256 '41574848644e720e28534f5263d8efbe7e2265e202a5b96d4ee338ad0a79b445'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.7/smb-macos-amd64.tar.gz'
      sha256 '69e07652cb49ea4a19ce7546a08714befa8189da577b6b4a5a2d3d47dac4c432'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
