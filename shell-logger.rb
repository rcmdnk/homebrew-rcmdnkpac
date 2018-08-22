class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.1.0.tar.gz"
  sha256 "439153fd6123739573b5ebe331762cde234f7b169152ae4f4e2979ac649ec76d"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger.sh"
  end
end
