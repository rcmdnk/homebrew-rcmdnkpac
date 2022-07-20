class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.19.tar.gz"
  sha256 "6eea36e3a698ba2f0cdb83dc99f0f0725aebbeb26573b8af80f75a824fbcb1cc"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
