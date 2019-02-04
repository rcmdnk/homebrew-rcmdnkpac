class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.2.0.tar.gz"
  sha256 "ea882d4c6d0aea5610a0dbd10694e52a9c5b92dafd4784ac78efa4feddd2ca1a"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger.sh"
  end
end
