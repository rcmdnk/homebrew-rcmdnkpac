class RcmdnkTrash < Formula
  desc "Remove Command using a trash box."
  homepage "https://github.com/rcmdnk/trash/"
  url "https://github.com/rcmdnk/trash/archive/v0.2.3.tar.gz"
  sha256 "f911954aa526dc939970065919d098a3e6edbddf97b9b02515501f216beb7bc0"

  head "https://github.com/rcmdnk/trash.git"

  depends_on "sentaku"

  def install
    bin.install "bin/trash"
  end
end
