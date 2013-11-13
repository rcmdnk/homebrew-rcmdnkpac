require 'formula'

MULTI_CLIPBOARDS_VERSION = '0.0.1'
class MultiClipboards < Formula
  homepage 'https://github.com/rcmdnk/multi_clipboards/'
  url 'https://github.com/rcmdnk/multi_clipboards.git', :tag => "v#{MULTI_CLIPBOARDS_VERSION}"
  version MULTI_CLIPBOARDS_VERSION
  head 'https://github.com/rcmdnk/multi_clipboards.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'multi_clipboards').chmod 0755
  end
end
