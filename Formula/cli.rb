class Cli < Formula
  desc 'smbCloud command line interface.'
  homepage 'https://github.com/smbcloudXYZ/smbcloud-cli'
  url 'https://github.com/smbcloudXYZ/smbcloud-cli/releases/download/v0.3.26/smb-macos-arm64'
  sha256 '79456ac0641433ffa4e1b1517192afe151888ec5'
  version '0.3.26'

  def install
    bin.install 'smb'
  end
end
