# frozen_string_literal: true

# Homebrew formula for Proses (`proses` binary).
class Proses < Formula
  desc "Professional Secure Execution System — fast, secure process manager"
  homepage "https://github.com/smbcloudXYZ/proses"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/smbcloudXYZ/proses/releases/download/v#{version}/proses-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    end
    on_intel do
      url "https://github.com/smbcloudXYZ/proses/releases/download/v#{version}/proses-macos-amd64.tar.gz"
      sha256 "PLACEHOLDER_AMD64_SHA256"
    end
  end

  def install
    bin.install "proses"
  end

  test do
    system "#{bin}/proses", "--version"
  end
end
