class SdCl < Formula
  desc "Useful functions to change directories for Bash/Zsh and GNU screen/tmux."
  homepage "https://github.com/rcmdnk/sd_cl/"
  url "https://github.com/rcmdnk/sd_cl/archive/v1.4.2.tar.gz"
  sha256 "e32c3aee3c8d5306b168098711705d72567cd649bd6af2cd90ea9e63968c6867"

  head "https://github.com/rcmdnk/sd_cl.git"

  depends_on "sentaku"

  def install
    (prefix/"etc").install "etc/sd_cl"
  end
end
