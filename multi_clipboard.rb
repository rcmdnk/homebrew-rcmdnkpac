require 'formula'

MULTI_CLIPBOARD_VERSION = '0.0.3'
class MultiClipboard < Formula
  homepage 'https://github.com/rcmdnk/multi_clipboard/'
  url 'https://github.com/rcmdnk/multi_clipboard.git', :tag => "v#{MULTI_CLIPBOARD_VERSION}"
  version MULTI_CLIPBOARD_VERSION
  head 'https://github.com/rcmdnk/multi_clipboard.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'multi_clipboard').chmod 0755
  end
end
