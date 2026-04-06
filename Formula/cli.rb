# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.3.37'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.37/smb-macos-arm64.tar.gz'
      sha256 '6d78691a170b76b4e9649f2be3c2a3890d76dfa58b36804e9d66415dcf0bf3d7'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.37/smb-macos-amd64.tar.gz'
      sha256 'e91afbc0ab51acb8fd63835c24d27d00388ada65c2fa6d6db4b489015dba171f'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
