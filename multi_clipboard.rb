class MultiClipboard < Formula
  desc "Clipboard manager for GNU screen."
  homepage "https://github.com/rcmdnk/multi_clipboard/"
  url "https://github.com/rcmdnk/multi_clipboard/archive/v0.0.9.tar.gz"
  sha256 "3c9699941a5832dd5be94cfe6d71b28fe1037ab8abc70548cc4622b8666266c1"

  head "https://github.com/rcmdnk/multi_clipboard.git"

  depends_on "sentaku"

  def install
    bin.install "bin/multi_clipboard"
  end
end
