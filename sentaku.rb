class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.3.2.tar.gz"
  sha256 "a90c6475a12b1aaf204a5ced01f11d2129c5230750b2d1226b826c3089c24656"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    prefix.install "bin"
    (bin+"sentaku").chmod 0755
  end
end
