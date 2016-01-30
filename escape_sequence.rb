class EscapeSequence < Formula
  desc "Scripts for checking escape sequences."
  homepage "https://github.com/rcmdnk/escape_sequence/"
  url "https://github.com/rcmdnk/escape_sequence/archive/v0.0.3.tar.gz"
  sha256 "d9f2701fce2c287d1dfa3a8280418232d6159dc2b685224597bbd24ddcc206f1"

  head "https://github.com/rcmdnk/escape_sequence.git"

  def install
    bin.install "bin/colcheck"
    bin.install "bin/escseqcheck"
  end
end
