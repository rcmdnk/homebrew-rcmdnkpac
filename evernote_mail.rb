require 'formula'

EVERNOTE_MAIL_VERSION = '0.0.1'
class EvernoteMail < Formula
  homepage 'https://github.com/rcmdnk/evernote_mail/'
  url 'https://github.com/rcmdnk/evernote_mail.git', :tag => "v#{EVERNOTE_MAIL_VERSION}"
  version EVERNOTE_MAIL_VERSION
  head 'https://github.com/rcmdnk/evernote_mail.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'evernote_mail').chmod 0755
  end
end
