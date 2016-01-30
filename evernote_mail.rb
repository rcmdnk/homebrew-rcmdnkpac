class EvernoteMail < Formula
  desc "Script to send files/comments to Evernote by a mail."
  homepage "https://github.com/rcmdnk/evernote_mail/"
  url "https://github.com/rcmdnk/evernote_mail/archive/v0.0.5.tar.gz"
  sha256 "4b35bc553995bdd6af7f975b735dd9bf18267ed45126a7842300f8c21d6836dd"

  head "https://github.com/rcmdnk/evernote_mail.git"

  def install
    bin.install "bin/evernote_mail"
  end
end
