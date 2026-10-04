# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.6.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.6.1/smb-macos-arm64.tar.gz'
      sha256 'e3efda8cebd62cdda672dc8bd05946ccc2af7d21c9683be2bee1fecb8e5c9c57'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.6.1/smb-macos-amd64.tar.gz'
      sha256 '1b5e4f4ccd84b49cd861daeaac61b347675db84e5804d518a3a2748c0f80d00e'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
