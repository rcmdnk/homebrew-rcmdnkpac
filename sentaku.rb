class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.8.0.tar.gz"
  sha256 "f8c643992d74ce74d79cbc8b72dcfc90bcdb6553ecd4e60e4597f4080dbb4d6c"
  license "MIT"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    bin.install "bin/sentaku"
    bin.install "bin/ddv"
  end
end
