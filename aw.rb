class Aw < Formula
  desc "AWS CLI Wrapper"
  homepage "https://github.com/rcmdnk/aw/"
  url "https://github.com/rcmdnk/aw/archive/v0.0.1.tar.gz"
  sha256 "6b582f14d8191ae30f475bce6a24826f87edb1f3bf31111ab69033e1fdde5188"

  head "https://github.com/rcmdnk/aw.git"

  def install
    bin.install "bin/aw"
  end
end
