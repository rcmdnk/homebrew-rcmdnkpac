class SdCl < Formula
  desc "Useful functions to change directories for Bash/Zsh and GNU screen/tmux."
  homepage "https://github.com/rcmdnk/sd_cl/"
  url "https://github.com/rcmdnk/sd_cl/archive/v1.5.0.tar.gz"
  sha256 "d7e8bc8ea2448716c74e66f5f83972c08a8ee4ed5c01f421720560c740b09097"

  head "https://github.com/rcmdnk/sd_cl.git"

  depends_on "sentaku"

  def install
    (prefix/"etc").install "etc/sd_cl"
  end
end
