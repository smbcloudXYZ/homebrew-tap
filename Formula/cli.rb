# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.0'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.0/smb-macos-arm64.tar.gz'
      sha256 'f7be7063306c0bf97e530330d33aa0cb7f42e16784f8385afe44cc7d47e6d555'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.0/smb-macos-amd64.tar.gz'
      sha256 '753d54a542f4228bd5c363d65958eadb5a8eb83ecbbba3cdd5babf881aae46b3'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
