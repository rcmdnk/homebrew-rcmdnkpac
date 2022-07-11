class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.7.tar.gz"
  sha256 "6f3b21af45a7d8e203fe9ef5d3d176519b27c61d466a6833ff8bb064f2b5d0e4"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
