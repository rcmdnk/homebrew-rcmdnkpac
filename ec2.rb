class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.2.10.tar.gz"
  sha256 "3efa6470e90228f7a9ad745dacf01b0f6a7853a5c80e69aa00fcc6b3a0cacc94"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
