class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.3.3.tar.gz"
  sha256 "e575dea9cf94cf7054cf0772a7ab39622c6ae720e0478a69ec5ebfdb91ec0259"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    prefix.install "bin"
    (bin+"sentaku").chmod 0755
  end
end
