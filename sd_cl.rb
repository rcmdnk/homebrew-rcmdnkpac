require 'formula'

SD_CL_VERSION = '0.1.3'
class SdCl < Formula
  homepage 'https://github.com/rcmdnk/sd_cl/'
  url 'https://github.com/rcmdnk/sd_cl.git', :tag => "v#{SD_CL_VERSION}"
  version SD_CL_VERSION
  head 'https://github.com/rcmdnk/sd_cl.git', :branch => 'master'

  depends_on 'sentaku'

  def install
    prefix.install 'etc'
  end
end
