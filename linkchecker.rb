require "formula"

LINKCHECKER_VERSION = "9.3"
class Linkchecker < Formula
  homepage "http://wummel.github.io/linkchecker/index.html"
  url "https://pypi.python.org/packages/source/L/LinkChecker/LinkChecker-#{LINKCHECKER_VERSION}.tar.gz"
  sha1 "bfdb7ad5c7c04f98c914e6caddcdb262b9669fcc"

  depends_on :python

  def install
  system "python", "setup.py", "install"
  end
end
