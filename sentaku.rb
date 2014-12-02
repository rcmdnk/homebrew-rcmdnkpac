require 'formula'

SENTAKU_VERSION = '0.2.7'
class Sentaku < Formula
  homepage 'https://github.com/rcmdnk/sentaku/'
  url 'https://github.com/rcmdnk/sentaku.git', :tag => "v#{SENTAKU_VERSION}"
  version SENTAKU_VERSION
  head 'https://github.com/rcmdnk/sentaku.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'sentaku').chmod 0755
  end
end
