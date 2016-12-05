class Explorer < Formula
  desc "File explorer made with shell script."
  homepage "https://github.com/rcmdnk/explorer.sh/"
  url "https://github.com/rcmdnk/explorer.sh/archive/v0.0.1.tar.gz"
  sha256 "d6c2c614c2d498e664f0cabe4ee22cfc62849dd0d4169de7ef43f77957fc118d"

  head "https://github.com/rcmdnk/explorer.sh.git"

  depends_on "sentaku"

  def install
    bin.install "bin/explorer"
  end

  test do
    system "explorer", "-h"
  end
end
