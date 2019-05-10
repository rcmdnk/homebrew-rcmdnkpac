class Smenu < Formula
  desc "Terminal utility that reads words from standard input or from a file and creates an interactive selection window just below the cursor. The selected word(s) are sent to standard output for further processing."
  homepage "https://github.com/p-gen/smenu"
  url "https://github.com/p-gen/smenu/archive/v0.9.15.tar.gz"
  sha256 "f42b24e06b0688176e485fe9873d720b8f0d01880ca7de869fca83163033a337"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
