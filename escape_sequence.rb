class EscapeSequence < Formula
  desc "Scripts for checking escape sequences."
  homepage "https://github.com/rcmdnk/escape_sequence/"
  url "https://github.com/rcmdnk/escape_sequence/archive/v0.0.5.tar.gz"
  sha256 "24245a3be083549b8e5370b54249b319b1d9b400954f33007ef558fb66ba58c2"
  license "MIT"

  head "https://github.com/rcmdnk/escape_sequence.git"

  def install
    bin.install "bin/colcheck"
    bin.install "bin/escseqcheck"
  end
end
