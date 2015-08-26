class RcmdnkTrash < Formula
  homepage "https://github.com/rcmdnk/trash/"
  url "https://github.com/rcmdnk/trash/archive/v0.1.6.tar.gz"
  sha256 "ab45a57db94e386f505438f233eaf21f243644b7e03c87b8345561e878326250"
  head "https://github.com/rcmdnk/trash.git"

  depends_on "sentaku"

  def install
    prefix.install "bin"
    (bin+"trash").chmod 0755
  end
end
