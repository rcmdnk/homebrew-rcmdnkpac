class EscapeSequence < Formula
  homepage "https://github.com/rcmdnk/escape_sequence/"
  url "https://github.com/rcmdnk/escape_sequence.git", :tag => "v0.0.3",
    :revision => "b3631cc71e1eb5ae1975216be5b241d60037c735"
  head "https://github.com/rcmdnk/escape_sequence.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
    (bin+"colcheck").chmod 0755
    (bin+"escseqcheck").chmod 0755
  end
end
