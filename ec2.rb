class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.9.tar.gz"
  sha256 "00a3a5b09e89e4ec82a579c75a5a2d4d51595d2e7d9fdc62e2d54788a5ea0eb0"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
