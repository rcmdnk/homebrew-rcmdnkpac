class Gtask < Formula
  homepage "https://github.com/rcmdnk/gtask/"
  url "https://github.com/rcmdnk/gtask/archive/v0.0.2.tar.gz"
  sha256 "e923eca26ab6fa5ca9d0700f25146e725c51a3d75e1a676c2be43b3a3bc9546c"

  head "https://github.com/rcmdnk/gtask.git"

  def install
    bin.install "bin/gtask"
    (bin+"gtask").chmod 0755
  end
end
