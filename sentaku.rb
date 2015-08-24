class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.4.2.tar.gz"
  sha256 "633874d155ba2563c996d7006a0121a7b24002f80fec80b1d22e0e349b74ee1d"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    prefix.install "bin"
    (bin+"sentaku").chmod 0755
  end
end
