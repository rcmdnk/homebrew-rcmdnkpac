class ParsePlist < Formula
  desc "Parser of plist in OS X."
  homepage "https://github.com/rcmdnk/parse-plist/"
  url "https://github.com/rcmdnk/parse-plist/archive/v0.0.2.tar.gz"
  sha256 "d945504ad2879a790110306fe0f464c34dd2b92c72f2323ac524a1276d5ad09d"
  license "MIT"

  head "https://github.com/rcmdnk/parse-plist.git"

  def install
    bin.install "bin/parse-plist"
  end
end
