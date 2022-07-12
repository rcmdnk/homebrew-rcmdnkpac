class Ec2 < Formula
  desc "AWS CLI Wrapper for EC2"
  homepage "https://github.com/rcmdnk/ec2/"
  url "https://github.com/rcmdnk/ec2/archive/v0.0.12.tar.gz"
  sha256 "9f5fea8e029c8307f97e770514b7bcc9ec4c458a8f7fa1f811bafbe7116d9168"

  head "https://github.com/rcmdnk/ec2.git"

  def install
    bin.install "bin/ec2"
  end
end
