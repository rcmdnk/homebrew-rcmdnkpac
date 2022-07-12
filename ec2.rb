class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.15.tar.gz"
  sha256 "78d41dd6e3bec257698d23b05f6c261fda4f828fa58e840ac13aa954a4cf1699"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
