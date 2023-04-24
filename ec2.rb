class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.32.tar.gz"
  sha256 "72fb61b4d02d410124d15e83b6d8ffbb5de03440a3c3d5bbcf7507fa7a96da5a"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
