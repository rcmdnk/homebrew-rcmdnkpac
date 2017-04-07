class OpenNewtab < Formula
  desc "Wrapper for macOS's open command to open folder in new tab of Finder instead of new window."
  homepage "https://github.com/rcmdnk/open_newtab/"
  url "https://github.com/rcmdnk/open_newtab/archive/v0.0.1.tar.gz"
  sha256 "2db5f8557a52af03940788cdd49c2680cacdf754debad98b7b6387f0c79d29e7"

  head "https://github.com/rcmdnk/open_newtab.git"

  def install
    bin.install "bin/open_newtab"
  end
end
