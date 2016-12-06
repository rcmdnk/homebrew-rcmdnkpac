class Explorer < Formula
  desc "File explorer made with shell script."
  homepage "https://github.com/rcmdnk/shell-explorer/"
  url "https://github.com/rcmdnk/shell-explorer/archive/v0.0.2.tar.gz"
  sha256 "73dd29c6714c785da8c0fb6927665b199c7870180a571c8acccc005e4290dcc1"

  head "https://github.com/rcmdnk/shell-explorer.git"

  depends_on "sentaku"

  def install
    bin.install "bin/se"
  end

  test do
    system "se", "-h"
  end
end
