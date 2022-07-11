class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.5.tar.gz"
  sha256 "df46d026a4071011dff8ccc41ba36d90805c03df952427e514e87213f9b6d4e6"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
