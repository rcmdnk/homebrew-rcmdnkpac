class MultiClipboard < Formula
  desc "Clipboard manager for GNU screen."
  homepage "https://github.com/rcmdnk/multi_clipboard/"
  url "https://github.com/rcmdnk/multi_clipboard/archive/v0.0.20.tar.gz"
  sha256 "3f708e0f8f26ccc8eb2f68487172175f742e6b77dab0864dabe481b680338786"

  head "https://github.com/rcmdnk/multi_clipboard.git"

  depends_on "sentaku"

  def install
    bin.install "bin/multi_clipboard"
  end
end
