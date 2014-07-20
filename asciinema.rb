require "formula"

ASCIINEMA_VERSION = "0.9.8"
class Asciinema < Formula
  homepage "http://asciinema.org"
  url "https://github.com/sickill/asciinema/archive/v#{ASCIINEMA_VERSION}.tar.gz"
  sha1 "d7d660f80e04754073262d955cb9ce9d8e850326"

  depends_on :python

  def install
  system "python", "setup.py", "install"
  end
end
