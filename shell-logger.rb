class ShellLogger < Formula
  desc "Logger for shell script."
  homepage "https://github.com/rcmdnk/shell-logger/"
  url "https://github.com/rcmdnk/shell-logger/archive/v0.1.0.tar.gz"
  sha256 "90db05e1c4caef9f924a16c3e8ce25580fa9c8e618d3a422df05b8a9265a0761"

  head "https://github.com/rcmdnk/shell-logger.git"

  def install
    (prefix/"etc").install "etc/shell-logger.sh"
  end
end
