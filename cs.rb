class Cs < Formula
  desc "Start claude with session selection"
  homepage "https://github.com/rcmdnk/cs/"
  url "https://github.com/rcmdnk/cs/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "272db4aa8cbbf419425d99d3a45bdfb0bbfad6b8a7425215952a5c9c6adbd63e"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/cs.git"

  def install
    (prefix/"etc").install "etc/cs"
  end

  test do
    assert_match version.to_s, shell_output("bash -c 'source #{etc}/cs && cs -v'")
  end
end
