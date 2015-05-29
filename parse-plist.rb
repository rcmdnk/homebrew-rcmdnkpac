class ParsePlist < Formula
  homepage "https://github.com/rcmdnk/parse-plist/"
  url "https://github.com/rcmdnk/parse-plist.git", :tag => "v0.0.1",
    :revision => "99dfbe395aa1b855a42c3402bf7226ac30ba68da"
  head "https://github.com/rcmdnk/parse-plist.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
    (bin+"parse-plist").chmod 0755
  end
end
