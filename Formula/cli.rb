# frozen_string_literal: true

# Homebrew formula for the smbCloud CLI (`smb` binary).
class Cli < Formula
  desc 'smbCloud command line interface'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  version '0.5.2'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.2/smb-macos-arm64.tar.gz'
      sha256 '60d606392fccc9b1f7c17198665e4a1c2cdce6167e64a68196c94b9fbc838e0d'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.5.2/smb-macos-amd64.tar.gz'
      sha256 '574639184f026415e64cb1e538326ffe68783bdab28b569e1620c06b27fd268e'
    end
  end

  def install
    bin.install 'smb'
  end

  test do
    system "#{bin}/smb", '--help'
  end
end
