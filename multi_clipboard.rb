class MultiClipboard < Formula
  homepage "https://github.com/rcmdnk/multi_clipboard/"
  url "https://github.com/rcmdnk/multi_clipboard.git", :tag => "v0.0.8",
    :revision => "9423b44be6541bf9ecbcc90a589dc214e9ac1624"
  head "https://github.com/rcmdnk/multi_clipboard.git", :branch => "master"

  depends_on "sentaku"

  skip_clean "bin"

  def install
    prefix.install "bin"
    (bin+"multi_clipboard").chmod 0755
  end
end
