class MultiClipboard < Formula
  desc "Clipboard manager for GNU screen."
  homepage "https://github.com/rcmdnk/multi_clipboard/"
  url "https://github.com/rcmdnk/multi_clipboard/archive/v0.0.14.tar.gz"
  sha256 "88c86a4c293754f8514c4e65e6727b802c0f964046ac8f8e6b48b20c8f08e93d"

  head "https://github.com/rcmdnk/multi_clipboard.git"

  depends_on "sentaku"

  def install
    bin.install "bin/multi_clipboard"
  end
end
