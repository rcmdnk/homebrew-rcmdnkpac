class Po < Formula
  desc "Parallel operation by using Tmux."
  homepage "https://github.com/rcmdnk/ParallelOperation/"
  url "https://github.com/rcmdnk/ParallelOperation/archive/v0.0.1.tar.gz"
  sha256 "4b35bc553995bdd6af7f975b735dd9bf18267ed45126a7842300f8c21d6836dd"
  license "MIT"

  head "https://github.com/rcmdnk/ParallelOperation.git"

  def install
    bin.install "bin/po"
  end
end
