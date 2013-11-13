require 'formula'

STOW_RESEET_VERSION = '0.0.1'
class StowRest < Formula
  homepage 'https://github.com/rcmdnk/stowRest/'
  url 'https://github.com/rcmdnk/stowRest.git', :tag => "v#{STOW_RESEET_VERSION}"
  version STOW_RESEET_VERSION
  head 'https://github.com/rcmdnk/stowRest.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'stowRest').chmod 0755
  end
end
