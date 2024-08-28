class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.1.1.tar.gz"
  sha256 "aee4b13a978c285c546b19b1cff40d8a1fd38ff6f8051e95f2465b04554dcd5f"

  head "https://github.com/rcmdnk/ec2.git"

  depends_on "awscli"

  def install
    bin.install "bin/ec2"
  end
end
