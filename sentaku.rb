class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.6.5.tar.gz"
  sha256 "c6f8ee790a8c02a0cc14d474d153ad7fc1e759382fcabc0590cb74bffcfccd30"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    bin.install "bin/sentaku"
    bin.install "bin/ddv"
  end
end
