class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.18.tar.gz"
  sha256 "ad5c77f555f6db2638f60811dd43337e0fedad26c70f7f9864d2ee6de04f8380"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
