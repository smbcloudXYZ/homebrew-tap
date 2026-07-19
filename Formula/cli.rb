# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.10'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.10/smb-macos-arm64.tar.gz'
      sha256 '4ec9e0dce1f905e546f43410b916abc13c69da13543faa64fad252ffa616bb31'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.10/smb-macos-amd64.tar.gz'
      sha256 'c4964dc0406eef650174d11fab8facb7fc34448a9037874496c51d50c9dd5f70'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
