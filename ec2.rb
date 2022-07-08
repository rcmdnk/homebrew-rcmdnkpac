class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.2.tar.gz"
  sha256 "88c34954cdeeb5eb4ec1fe92aebd21b88836d8ecca29f5afcc8a5697a5340e9f"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/aw"
  end
end
