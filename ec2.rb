class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.3.tar.gz"
  sha256 "e6e987eb646d6d42088e8cc66777538021d453bf8e69fa51bb17a42ad90f12c0"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/aw"
  end
end
