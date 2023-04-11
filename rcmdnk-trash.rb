class RcmdnkTrash < Formula
  desc "Remove Command using a trash box."
  homepage "https://github.com/rcmdnk/trash/"
  url "https://github.com/rcmdnk/trash/archive/v0.2.5.tar.gz"
  sha256 "7e749b3943327b31282951d13c4e238e105c94281f8190501b14a24e008eccf5"
  license "MIT"

  head "https://github.com/rcmdnk/trash.git"

  depends_on "sentaku"

  def install
    bin.install "bin/trash"
  end
end
