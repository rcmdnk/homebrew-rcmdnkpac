require 'formula'

TRASH_VERSION = '0.0.1'
class Trash < Formula
  homepage 'https://github.com/rcmdnk/trash/'
  url 'https://github.com/rcmdnk/trash.git', :tag => "v#{TRASH_VERSION}"
  version TRASH_VERSION
  head 'https://github.com/rcmdnk/trash.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'trash').chmod 0755
  end
end
