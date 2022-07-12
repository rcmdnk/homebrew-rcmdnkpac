class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.10.tar.gz"
  sha256 "p7ecc37e70ec3a5bd4b3e856b1b04b1a1134ebbd50b2df422b2ae5811f7b00028"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
