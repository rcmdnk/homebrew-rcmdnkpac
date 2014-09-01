require "formula"

ASCIINEMA_VERSION = "0.9.8"
class Asciinema < Formula
  homepage "http://asciinema.org"
  url "https://github.com/sickill/asciinema/archive/v#{ASCIINEMA_VERSION}.tar.gz"
  sha1 "d374ffebe81cc43bf9d07380836302981d249b73"

  depends_on :python

  def install
  system "python", "setup.py", "install"
  end
end
