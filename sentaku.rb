class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.4.6.tar.gz"
  sha256 "2c9801067ab7e4dd61af5ffb40b5098bc127d2093214c0fd4358c7a2d248ab2e"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    bin.install "bin/sentaku"
    bin.install "bin/ddv"
  end
end
