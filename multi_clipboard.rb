class MultiClipboard < Formula
  desc "Clipboard manager for GNU screen."
  homepage "https://github.com/rcmdnk/multi_clipboard/"
  url "https://github.com/rcmdnk/multi_clipboard/archive/v0.0.18.tar.gz"
  sha256 "f7a6f962eca63b0300caa4d56f6f9bb7308a138692f9989d26edf1d0357456bd"

  head "https://github.com/rcmdnk/multi_clipboard.git"

  depends_on "sentaku"

  def install
    bin.install "bin/multi_clipboard"
  end
end
