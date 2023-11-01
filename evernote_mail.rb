class EvernoteMail < Formula
  desc "Script to send files/comments to Evernote by a mail."
  homepage "https://github.com/rcmdnk/evernote_mail/"
  url "https://github.com/rcmdnk/evernote_mail/archive/v0.0.7.tar.gz"
  sha256 "83869cac38f993d7de866be79333b39fd042f67ed8593598f3a674d6b269d4e7"
  license "MIT"

  head "https://github.com/rcmdnk/evernote_mail.git"

  def install
    bin.install "bin/evernote_mail"
  end
end
