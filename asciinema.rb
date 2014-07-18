require "formula"

ASCIINEMA_VERSION = "0.9.5"
class Asciinema < Formula
  homepage "http://asciinema.org"
  url "https://github.com/sickill/asciinema/archive/v#{ASCIINEMA_VERSION}.tar.gz"

  depends_on :python => "2.7"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
