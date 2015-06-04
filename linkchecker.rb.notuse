class Linkchecker < Formula
  homepage "https://wummel.github.io/linkchecker/index.html"
  url "https://pypi.python.org/packages/source/L/LinkChecker/LinkChecker-9.3.tar.gz"
  sha1 "bfdb7ad5c7c04f98c914e6caddcdb262b9669fcc"

  depends_on :python

  def install
    ENV["PYTHONPATH"] = lib+"python2.7/site-packages"
    ENV.prepend_create_path 'PYTHONPATH', lib+'python2.7/site-packages'
    system "python", "setup.py", "build"
    system "python", "setup.py", "install", "--prefix=#{prefix}"
  end
end
