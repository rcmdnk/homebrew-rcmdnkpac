class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.51.tar.gz"
  sha256 "0193506a38cd4322d81139e78b92f4611df4d94c40d941f9c93573d547f4c5e8"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
