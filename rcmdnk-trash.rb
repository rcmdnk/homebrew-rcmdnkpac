class RcmdnkTrash < Formula
  desc "Remove Command using a trash box."
  homepage "https://github.com/rcmdnk/trash/"
  url "https://github.com/rcmdnk/trash/archive/v0.2.4.tar.gz"
  sha256 "6393eff4a9c16cc96f05ce080d0892bc58bd594d48ed1d94e2f5777972aa9c12"

  head "https://github.com/rcmdnk/trash.git"

  depends_on "sentaku"

  def install
    bin.install "bin/trash"
  end
end
