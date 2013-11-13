require 'formula'

STOW_RESET_VERSION = '0.0.1'
class StowReset < Formula
  homepage 'https://github.com/rcmdnk/stow_reset/'
  url 'https://github.com/rcmdnk/stow_reset.git', :tag => "v#{STOW_RESET_VERSION}"
  version STOW_RESET_VERSION
  head 'https://github.com/rcmdnk/stow_reset.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'stow_reset').chmod 0755
  end
end
