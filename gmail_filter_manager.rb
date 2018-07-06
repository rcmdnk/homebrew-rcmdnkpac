class GmailFilterManager < Formula
  desc "Gmail filer manager using YAML format."
  homepage "https://github.com/rcmdnk/gmail_filter_manager/"
  url "https://github.com/rcmdnk/gmail_filter_manager/archive/v0.0.1.tar.gz"
  sha256 "e8b940ac6596b393d7c2c899828219ffd1f010d0ae128ec0449fe908e5a8c7f9"

  head "https://github.com/rcmdnk/gmail_filter_manager"

  def install
    bin.install "bin/gfm_extract"
    bin.install "bin/gfm_make"
  end
end
