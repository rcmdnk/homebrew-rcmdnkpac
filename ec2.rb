class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.2.2.tar.gz"
  sha256 "a1a3b2a968486772ffcf1289566044e2d1c50c54ad29039ad49e1f0a47a553a3"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
