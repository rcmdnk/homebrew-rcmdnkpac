class ShellExplorer < Formula
  desc "File explorer with preview, made with shell script."
  homepage "https://github.com/rcmdnk/shell-explorer/"
  url "https://github.com/rcmdnk/shell-explorer/archive/v0.0.4.tar.gz"
  sha256 "d6088b6db43c43ddc98bbeffeeb56229f369b83248f9f2df1d6595485762411a"

  head "https://github.com/rcmdnk/shell-explorer.git"

  depends_on "sentaku"

  def install
    bin.install "bin/se"
  end

  test do
    system "se", "-h"
  end
end
