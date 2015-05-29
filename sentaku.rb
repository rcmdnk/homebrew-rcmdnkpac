SENTAKU_VERSION = '0.3.0'
class Sentaku < Formula
  homepage "https://github.com/rcmdnk/sentaku/"
  url "https://github.com/rcmdnk/sentaku.git", :tag => "v0.3.0",
    :revision => "6ea11a5bf3e12238fb5fa9ad0cc0bf60afabfe65"
  head "https://github.com/rcmdnk/sentaku.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
    (bin+"sentaku").chmod 0755
  end
end
