class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.0.1.tar.gz"
  sha256 "4c406abaf32578fa434a6f8fa0456f0ea57fd1f4860fff4c503085c6f9f1e49d"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger.sh"
  end
end
