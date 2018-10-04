class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.7.0.tar.gz"
  sha256 "778d601bbfe1e2e4ed66a27e66bffeb4c2dee86c98721c53611a26a5099c5e55"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    bin.install "bin/sentaku"
    bin.install "bin/ddv"
  end
end
