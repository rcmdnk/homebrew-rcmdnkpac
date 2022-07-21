class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.20.tar.gz"
  sha256 "e9bb032b4d86ed28851b925d3b3c66313a1b53ecc6e6a1a6b81d6f31b4fca1c6"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
