class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.27.tar.gz"
  sha256 "793a15fae1a4ac2223a6a35f51eed88772822049a151e7f6b330fa8d5ee2f395"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
