class EvernoteMail < Formula
  homepage "https://github.com/rcmdnk/evernote_mail/"
  url "https://github.com/rcmdnk/evernote_mail.git", :tag => "v0.0.5",
    :revision => "7e101051c5a927cd8d0ce17ce46eea6e8273de70"
  head "https://github.com/rcmdnk/evernote_mail.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
    (bin+"evernote_mail").chmod 0755
  end
end
