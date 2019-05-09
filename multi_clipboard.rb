class MultiClipboard < Formula
  desc "Clipboard manager for GNU screen."
  homepage "https://github.com/rcmdnk/multi_clipboard/"
  url "https://github.com/rcmdnk/multi_clipboard/archive/v0.0.13.tar.gz"
  sha256 "6262a8c98a1f456fec727b066cfeba0f360361482f58d257d92f4a8b09a8b025"

  head "https://github.com/rcmdnk/multi_clipboard.git"

  depends_on "sentaku"

  def install
    bin.install "bin/multi_clipboard"
  end
end
