class RcmdnkTrash < Formula
  homepage "https://github.com/rcmdnk/trash/"
  url "https://github.com/rcmdnk/trash.git", :tag => "v0.1.5",
    :revision => "f52f689f33afcc7b50feae5de3483d8e99ac3443"
  head "https://github.com/rcmdnk/trash.git", :branch => "master"

  depends_on "sentaku"

  skip_clean "bin"

  def install
    prefix.install "bin"
    (bin+"trash").chmod 0755
  end
end
