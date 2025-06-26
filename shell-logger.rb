class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.3.2.tar.gz"
  sha256 "d54bd8b9e8991b9738a06d999022745dc45067bf9ce8c5bc1baa97446082d275"
  license "MIT"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger"
  end
end
