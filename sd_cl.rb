require 'formula'

SD_CL_VERSION = '0.0.4'
class SdCl < Formula
  option 'standalone', 'stand-alone version'

  homepage 'https://github.com/rcmdnk/sd_cl/'
  if build.include 'standalone'
    url 'https://github.com/rcmdnk/sd_cl.git', :branch => 'standalone'
    version 'Standalone'
    depends_on 'rcmdnk/sentaku'
  else
    url 'https://github.com/rcmdnk/sd_cl.git', :tag => "v#{SD_CL_VERSION}"
    version SD_CL_VERSION
  end
  head 'https://github.com/rcmdnk/sd_cl.git', :branch => 'master'

  def install
    prefix.install 'etc'
  end
end
