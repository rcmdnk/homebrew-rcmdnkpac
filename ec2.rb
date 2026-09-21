class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.3.1.tar.gz"
  sha256 "dae2ebe68bfe8f1d21bea9cc3f30d61138740bdc52a16d33d2b27dda87bc9401"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
