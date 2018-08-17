class SdCl < Formula
  desc "Useful functions to change directories for Bash/Zsh and GNU screen/tmux."
  homepage "https://github.com/rcmdnk/sd_cl/"
  url "https://github.com/rcmdnk/sd_cl/archive/v1.0.1.tar.gz"
  sha256 "1d25819cfc150a07f792c036a03aeccf4b826e44b58ef4bd1f1b8ffc8f117989"

  head "https://github.com/rcmdnk/sd_cl.git"

  depends_on "sentaku"

  def install
    (prefix/"etc").install "etc/sd_cl"
  end
end
