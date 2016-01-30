class SdCl < Formula
  desc "Useful functions to change directories for Bash/Zsh and GNU screen/tmux."
  homepage "https://github.com/rcmdnk/sd_cl/"
  url "https://github.com/rcmdnk/sd_cl/archive/v0.2.2.tar.gz"
  sha256 "0a594fcc66c24f816687114a20bb12aecf502a604727c961e44fe3576e68270e"

  head "https://github.com/rcmdnk/sd_cl.git"

  depends_on "sentaku"

  def install
    (prefix/"etc").install "etc/sd_cl"
  end
end
