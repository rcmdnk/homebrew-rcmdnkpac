class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.7.1.tar.gz"
  sha256 "a9cd30f1a3e0c5b9d3c2b9a33968dc9e24dacfb6db9e3824efdd8d2b931901a9"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    bin.install "bin/sentaku"
    bin.install "bin/ddv"
  end
end
