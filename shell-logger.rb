class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.0.2.tar.gz"
  sha256 "fdc0c322f575468629537d5b571a807eda0acfd6cefd540e1e68b531a4bf390a"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger.sh"
  end
end
