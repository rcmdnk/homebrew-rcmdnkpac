class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.4.4.tar.gz"
  sha256 "8c1d353d6c8749d7d8a5b75f92fb22b8b43becbd7607604d69ae7d3e86e470f8"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    prefix.install "bin"
    (bin+"sentaku").chmod 0755
  end
end
