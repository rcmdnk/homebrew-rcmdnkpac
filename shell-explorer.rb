class ShellExplorer < Formula
  desc "File explorer with preview, made with shell script."
  homepage "https://github.com/rcmdnk/shell-explorer/"
  url "https://github.com/rcmdnk/shell-explorer/archive/v0.0.3.tar.gz"
  sha256 "6c58052eaf0273000bf381f917c7c2cef77f4fd6bd6b0e451e6b65b23cebaf46"

  head "https://github.com/rcmdnk/shell-explorer.git"

  depends_on "sentaku"

  def install
    bin.install "bin/se"
  end

  test do
    system "se", "-h"
  end
end
