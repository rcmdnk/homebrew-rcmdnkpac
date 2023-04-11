class Inputsource < Formula
  desc "Command line tool to select text input source on Mac OS X 10.5 (Leopard) or later."
  homepage "https://github.com/hnakamur/inputsource"
  head "https://github.com/hnakamur/inputsource.git"
  license "MIT"

  def install
    bin.install "inputsource"
  end
end
