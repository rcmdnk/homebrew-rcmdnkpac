class Cs < Formula
  desc "Start claude with session selection"
  homepage "https://github.com/rcmdnk/cs/"
  url "https://github.com/rcmdnk/cs/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e9e8139672ddc694b25db4201205306aefd3c67c6784ee262620203611dada7b"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/cs.git"

  def install
    (prefix/"etc").install "etc/cs"
  end

  test do
    assert_match version.to_s, shell_output("bash -c 'source #{etc}/cs && cs -v'")
  end
end
