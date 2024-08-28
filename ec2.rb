class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.1.0.tar.gz"
  sha256 "976ba4e01bc31c647d6f8772ab1d92ef2fdb4e945bfb5d6e95bc5699b0a5fefa"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
