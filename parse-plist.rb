class ParsePlist < Formula
  desc "Parser of plist in OS X."
  homepage "https://github.com/rcmdnk/parse-plist/"
  url "https://github.com/rcmdnk/parse-plist/archive/v0.0.1.tar.gz"
  sha256 "a52f9e470533dd7fc6b88ed771276e484c1a72e9942f83975fbe66a39f68f828"

  head "https://github.com/rcmdnk/parse-plist.git"

  def install
    bin.install "bin/parse-plist"
  end
end
