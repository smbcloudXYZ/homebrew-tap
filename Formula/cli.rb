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
      sha256 '23c93ce7c19c3bb7cc49d31bb77f852a165325a0bb8b63938a537f40ce377445'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.1/smb-macos-amd64.tar.gz'
      sha256 'b713204379644467173e3eb5095cc3359412987300606805c8d6399b543fcc26'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
