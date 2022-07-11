class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.6.tar.gz"
  sha256 "40d455c174a7977a84820967fd4ee6a5a70214ec885aa4dc0a491c42039e4fb5"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
