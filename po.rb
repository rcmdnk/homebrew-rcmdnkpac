class Po < Formula
  desc "Parallel operation by using Tmux."
  homepage "https://github.com/rcmdnk/ParallelOperation/"
  url "https://github.com/rcmdnk/ParallelOperation/archive/v0.0.1.tar.gz"
  sha256 "9d3e814104caa66c472cec4a9d21a7710f318cbe2cce22ef65d55bb1681f004a"
  license "MIT"

  head "https://github.com/rcmdnk/ParallelOperation.git"

  def install
    bin.install "bin/po"
  end
end
