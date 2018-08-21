class EvernoteMail < Formula
  desc "Script to send files/comments to Evernote by a mail."
  homepage "https://github.com/rcmdnk/evernote_mail/"
  url "https://github.com/rcmdnk/evernote_mail/archive/v0.0.6.tar.gz"
  sha256 "82311afcab3c19c8761d1213a5e11a6b83a1d70ecb98e135096bf4f01d5054c0"

  head "https://github.com/rcmdnk/evernote_mail.git"

  def install
    bin.install "bin/evernote_mail"
  end
end
