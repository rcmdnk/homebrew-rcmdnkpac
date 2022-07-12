class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.16.tar.gz"
  sha256 "4c20c6cdeb3b351181a004180f645430e1078075da245618433083a468dd9f5a"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
