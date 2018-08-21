class RcmdnkTrash < Formula
  desc "Remove Command using a trash box."
  homepage "https://github.com/rcmdnk/trash/"
  url "https://github.com/rcmdnk/trash/archive/v0.2.2.tar.gz"
  sha256 "2cd4cc90667627b26c714decb89913df1bc2f1e118105bb3baa5f6d7b28826ac"

  head "https://github.com/rcmdnk/trash.git"

  depends_on "sentaku"

  def install
    bin.install "bin/trash"
  end
end
