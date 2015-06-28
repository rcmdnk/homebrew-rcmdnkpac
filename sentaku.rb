class Sentaku < Formula
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku.git", :tag => "v0.3.1",
    :revision => "c05b6ab618ed9309c6f392baa466e971bf231802"
  head "https://github.com/rcmdnk/sentaku.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
    (bin+"sentaku").chmod 0755
  end
end
