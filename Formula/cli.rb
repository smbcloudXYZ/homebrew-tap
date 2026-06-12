# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.4.3'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.3/smb-macos-arm64.tar.gz'
      sha256 '7aa2675f79b128d627a029a524950dee709450fbefb0f6f31f68e8f92ecd8283'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.4.3/smb-macos-amd64.tar.gz'
      sha256 'd63311edac317f95ec71b55857b7aceb83e8aeeb56c856f0283db333b6d31f4d'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
