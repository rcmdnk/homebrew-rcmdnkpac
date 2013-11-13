require 'formula'

RCMDNK_TRASH_VERSION = '0.0.1'
class RcmdnkTrash < Formula
  homepage 'https://github.com/rcmdnk/trash/'
  url 'https://github.com/rcmdnk/trash.git', :tag => "v#{RCMDNK_TRASH_VERSION}"
  version RCMDNK_TRASH_VERSION
  head 'https://github.com/rcmdnk/trash.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'trash').chmod 0755
  end
end