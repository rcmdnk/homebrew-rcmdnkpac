class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.2.7.tar.gz"
  sha256 "9b5fe9ee925ddcb0f1d8ec6134b996fc4f81c366519cb9f9c06aec8caeed7b56"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
