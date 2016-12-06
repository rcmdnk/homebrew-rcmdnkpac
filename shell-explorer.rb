class ShellExplorer < Formula
  desc "File explorer with preview, made with shell script."
  homepage "https://github.com/rcmdnk/shell-explorer/"
  url "https://github.com/rcmdnk/shell-explorer/archive/v0.0.2.tar.gz"
  sha256 "38f8138c540526e67d556e5061767605877255cfaeb4a3b14d1fd9b213acb116"

  head "https://github.com/rcmdnk/shell-explorer.git"

  depends_on "sentaku"

  def install
    bin.install "bin/se"
  end

  test do
    system "se", "-h"
  end
end
