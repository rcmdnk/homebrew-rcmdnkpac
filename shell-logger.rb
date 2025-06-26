class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.3.2.tar.gz"
  sha256 "81df99c8c25c7d1f40d6e50728b107c21035f6aa522e1b06e024c98cf1d41856"
  license "MIT"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger"
  end
end
