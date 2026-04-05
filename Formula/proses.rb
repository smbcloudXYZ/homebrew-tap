# frozen_string_literal: true

# Homebrew formula for Proses (`proses` binary).
class Proses < Formula
  desc 'Professional Secure Execution System — fast, secure process manager'
  homepage 'https://github.com/smbcloudXYZ/proses'
  version '0.1.1'
  license 'MIT'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/proses/releases/download/v0.1.1/proses-macos-arm64.tar.gz'
      sha256 '8df6a52dea8aa49e15f1119ff9171d5e286fc6a3e2e5e2e4a221bfb6c270d52d'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/proses/releases/download/v0.1.1/proses-macos-amd64.tar.gz'
      sha256 '48d307425171b61e1b7ec532d7bca56f2ea10f2fcd8890b61cc8d6dc42570731'
    end
  end

  def install
    bin.install 'proses'
  end

  test do
    system "#{bin}/proses", '--version'
  end
end
