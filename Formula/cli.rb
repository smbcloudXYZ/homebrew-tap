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
      sha256 '6fa8c0d27d93b320dee79215d0a80989d5cf00b590f20994562fd68a6cd0658f'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.5/smb-macos-amd64.tar.gz'
      sha256 '0dc25bdd766ac60ab612133e4ff4911b57422cc7eec93bb304319385424e00ef'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
