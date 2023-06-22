class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.2.1.tar.gz"
  sha256 "434497fba2ac293f60ffed8ad3a0010a286dabcf35fbe3abe07afd9909312389"
  license "MIT"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger"
  end
end
