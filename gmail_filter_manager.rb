class GmailFilterManager < Formula
  desc "Gmail filer manager using YAML format."
  homepage "https://github.com/rcmdnk/gmail_filter_manager/"
  url "https://github.com/rcmdnk/gmail_filter_manager/archive/v0.0.2.tar.gz"
  sha256 "842ad09001c750e298dc61be0f3d1c4faad594a3f8ee8dd46b28fba140c75f2c"
  license "MIT"

  head "https://github.com/rcmdnk/gmail_filter_manager"

  def install
    bin.install "bin/gfm_extract"
    bin.install "bin/gfm_make"
  end
end
