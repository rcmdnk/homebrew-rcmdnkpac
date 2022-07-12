class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.14.tar.gz"
  sha256 "ecf7c71a5738d9e39482f446e6c37e14bda972087db958bea4de67e47d5fbcd6"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
