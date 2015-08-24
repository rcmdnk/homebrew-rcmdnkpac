class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.4.0.tar.gz"
  sha256 "1b460c2b3fdb0ebeeb597c6d62406e335ad8134157c71594398f01b2d3ea7ad6"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    prefix.install "bin"
    (bin+"sentaku").chmod 0755
  end
end
