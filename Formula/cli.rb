# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.5'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.5/smb-macos-arm64.tar.gz'
      sha256 '43507635027265f25e497f52986d6d841cf09fa4c3b9382ccf699177e2a55a73'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.5/smb-macos-amd64.tar.gz'
      sha256 '451ec206b51c37a87923cb600bb74d37431559255703ae1eec79c3eb34e0215c'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
