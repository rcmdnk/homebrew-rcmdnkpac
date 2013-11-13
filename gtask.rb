require 'formula'

GTASK_VERSION = '0.0.1'
class Gtask < Formula
  homepage 'https://github.com/rcmdnk/gtask/'
  url 'https://github.com/rcmdnk/gtask.git', :tag => "v#{GTASK_VERSION}"
  version GTASK_VERSION
  head 'https://github.com/rcmdnk/gtask.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'gtask').chmod 0755
  end
end
