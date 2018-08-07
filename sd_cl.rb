class SdCl < Formula
  desc "Useful functions to change directories for Bash/Zsh and GNU screen/tmux."
  homepage "https://github.com/rcmdnk/sd_cl/"
  url "https://github.com/rcmdnk/sd_cl/archive/v0.3.0.tar.gz"
  sha256 "78bafc67ce5c2fb288ff97e1901e6eaea7f8b87eb64b0897e889b22d4d3cd52c"

  head "https://github.com/rcmdnk/sd_cl.git"

  depends_on "sentaku"

  def install
    (prefix/"etc").install "etc/sd_cl"
  end
end
