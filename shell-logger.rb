class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.3.1.tar.gz"
  sha256 "f4dcb91182e4218ce57fa9ed337a4b926c3407faf7df5c3333a87a6172f4a614"
  license "MIT"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger"
  end
end
