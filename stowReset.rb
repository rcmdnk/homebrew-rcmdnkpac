require 'formula'

STOW_RESEET_VERSION = '0.0.1'
class StowReset < Formula
  homepage 'https://github.com/rcmdnk/stowReset/'
  url 'https://github.com/rcmdnk/stowReset.git', :tag => "v#{STOW_RESEET_VERSION}"
  version STOW_RESEET_VERSION
  head 'https://github.com/rcmdnk/stowReset.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'stowReset').chmod 0755
  end
end
