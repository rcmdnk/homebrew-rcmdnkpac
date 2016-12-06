class Sentaku < Formula
  desc "Utility to make sentaku (selection) window with shell command."
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku/archive/v0.6.1.tar.gz"
  sha256 "6eecd491c72aec0ee9bcc011da2e55670da968dcbf9ca91d84f90a2e729d6bd1"

  head "https://github.com/rcmdnk/sentaku.git"

  def install
    bin.install "bin/sentaku"
    bin.install "bin/ddv"
  end
end
