class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.3.0.tar.gz"
  sha256 "baf21bff99b68acf26cf54cbed54a34c34fa9fb953c0adef13c7105798f7638c"
  license "MIT"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger"
  end
end
