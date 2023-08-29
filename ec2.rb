class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.45.tar.gz"
  sha256 "ef78cdc5910bd7b6127092c66d1a1463c33bdd20c332a0a61c1126cfec86746b"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
