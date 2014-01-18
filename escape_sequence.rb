require 'formula'

ESCAPE_SEQUENCE_VERSION = '0.0.2'
class EscapeSequence < Formula
  homepage 'https://github.com/rcmdnk/escape_sequence/'
  url 'https://github.com/rcmdnk/escape_sequence.git', :tag => "v#{ESCAPE_SEQUENCE_VERSION}"
  version ESCAPE_SEQUENCE_VERSION
  head 'https://github.com/rcmdnk/escape_sequence.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'colcheck').chmod 0755
    (bin+'escseqcheck').chmod 0755
  end
end
