# frozen_string_literal: true

# Homebrew formula for smbcloud-ascapi (`asc` binary).
class Ascapi < Formula
  desc 'App Store Connect, Google Play, Microsoft Store and AppGallery from the terminal and MCP'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-ascapi'
  version '0.5.1'
  license 'Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/smbcloudXYZ/smbcloud-ascapi/releases/download/v0.5.1/asc-macos-arm64.tar.gz'
      sha256 '78d75652e76166c34fbc8e524a244e3d0cb4e93c8a3b6dd1cc63be7f0fbf2966'
    end
    on_intel do
      url 'https://github.com/smbcloudXYZ/smbcloud-ascapi/releases/download/v0.5.1/asc-macos-amd64.tar.gz'
      sha256 '170d8848bc215b82e2112ada6bcc378a2c5c9a2d8d2315ccd400af87ba37718f'
    end
  end

  def install
    bin.install 'asc'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asc --version")
  end
end
