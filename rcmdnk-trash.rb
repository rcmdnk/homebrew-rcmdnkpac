class RcmdnkTrash < Formula
  desc "Remove Command using a trash box."
  homepage "https://github.com/rcmdnk/trash/"
  url "https://github.com/rcmdnk/trash/archive/v0.2.1.tar.gz"
  sha256 "307f0a6f480d301f899d9ded85646ffdd92f1c829c179be029d8fe91f8083922"

  head "https://github.com/rcmdnk/trash.git"

  depends_on "sentaku"

  def install
    bin.install "bin/trash"
  end
end
