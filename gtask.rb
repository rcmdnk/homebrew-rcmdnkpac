class Gtask < Formula
  homepage "https://github.com/rcmdnk/gtask/"
  url "https://github.com/rcmdnk/gtask.git", :tag => "v0.0.1",
    :revision => "8a790cb7f8ca4d26056dfc5755e61e7d6749b9dc"
  head "https://github.com/rcmdnk/gtask.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
    (bin+"gtask").chmod 0755
  end
end
