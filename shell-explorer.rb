class ShellExplorer < Formula
  desc "File explorer with preview, made with shell script."
  homepage "https://github.com/rcmdnk/shell-explorer/"
  url "https://github.com/rcmdnk/shell-explorer/archive/v0.0.5.tar.gz"
  sha256 "517b51f3cda53ddfbbb1d3fb26e5e3f42067d01fc424fe8321806fc6f78533a0"

  head "https://github.com/rcmdnk/shell-explorer.git"

  depends_on "sentaku"

  def install
    bin.install "bin/se"
  end

  test do
    system "se", "-h"
  end
end
