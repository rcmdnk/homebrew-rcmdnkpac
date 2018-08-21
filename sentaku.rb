class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.6.4.tar.gz"
  sha256 "faa9a63338eb68946ef45877396d9f7f66ffc08979da0091d6518ecf5d3683b3"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    bin.install "bin/sentaku"
    bin.install "bin/ddv"
  end
end
