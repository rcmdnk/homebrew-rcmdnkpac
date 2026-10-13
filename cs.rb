class Cs < Formula
  desc "Start claude with session selection"
  homepage "https://github.com/rcmdnk/cs/"
  url "https://github.com/rcmdnk/cs/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "7966bce0375ddd9a116ae71e0d110e38c5079585fca35bf49a7f411c6d8f21bb"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/cs.git"

  def install
    (prefix/"etc").install "etc/cs"
  end

  test do
    assert_match version.to_s, shell_output("bash -c 'source #{etc}/cs && cs -v'")
  end
end
