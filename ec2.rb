class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.4.tar.gz"
  sha256 "0ea2c573f27bd61b2402d54e0c0741c5d31ec64bfe6b54b57d4c6e2e49206070"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
