class Inputsource < Formula
  desc "Command line tool to select text input source on Mac OS X 10.5 (Leopard) or later."
  homepage "https://github.com/hnakamur/inputsource"
  head "https://github.com/hnakamur/inputsource"

  def install
    bin.install "inputsource"
    chmod 0755, "#{bin}/inputsource"
  end
end
