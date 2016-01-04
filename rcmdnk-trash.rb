class RcmdnkTrash < Formula
  homepage "https://github.com/rcmdnk/trash/"
  url "https://github.com/rcmdnk/trash/archive/v0.2.0.tar.gz"
  sha256 "4c4f2d033bebce4a02e1987f4a095ab5856454866af29017924cbf8ecf84c99f"
  head "https://github.com/rcmdnk/trash.git"

  depends_on "sentaku"

  def install
    prefix.install "bin"
    (bin+"trash").chmod 0755
  end
end
