class Gtask < Formula
  homepage "https://github.com/rcmdnk/gtask/"
  url "https://github.com/rcmdnk/gtask/archive/v0.0.2.tar.gz"
  sha256 "a39261bc6e0ad3a7341b7adc888637017f4ab2d9094385966b6a7a0ce70ea944"

  head "https://github.com/rcmdnk/gtask.git"

  def install
    bin.install "bin/gtask"
    (bin+"gtask").chmod 0755
  end
end
