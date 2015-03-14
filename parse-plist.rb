require 'formula'

PARSE_PLIST_VERSION = '0.0.1'
class ParsePlist < Formula
  homepage 'https://github.com/rcmdnk/parse-plist/'
  url 'https://github.com/rcmdnk/parse-plist.git', :tag => "v#{PARSE_PLIST_VERSION}"
  version PARSE_PLIST_VERSION
  head 'https://github.com/rcmdnk/parse-plist.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'parse-plist').chmod 0755
  end
end
