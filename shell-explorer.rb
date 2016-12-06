class ShellExplorer < Formula
  desc "File explorer with preview, made with shell script."
  homepage "https://github.com/rcmdnk/shell-explorer/"
  url "https://github.com/rcmdnk/shell-explorer/archive/v0.0.2.tar.gz"
  sha256 "092c4cea2924fbf8f74478d55fda41b2e596e38644e2367103e8c8421c9808c8"

  head "https://github.com/rcmdnk/shell-explorer.git"

  depends_on "sentaku"

  def install
    bin.install "bin/se"
  end

  test do
    system "se", "-h"
  end
end
