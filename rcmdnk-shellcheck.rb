require "language/haskell"

class Shellcheck < Formula
  include Language::Haskell::Cabal

  desc "Static analysis and lint tool, for (ba)sh scripts"
  homepage "https://www.shellcheck.net/"
  url "https://github.com/koalaman/shellcheck/archive/v0.7.0.tar.gz"
  sha256 "946cf3421ffd418f0edc380d1184e4cb08c2ec7f098c79b1c8a2c482fe91d877"
  head "https://github.com/koalaman/shellcheck.git"

  bottle do
    sha256 "be8e084d55379a4b5a8bfba78ad298f966f0888e6c3eb7e5202527d3938f3501" => :mojave
    sha256 "a4e12db223139c82649fdc16a2d04184cbaf5fc413c1135b0a1100a16e33290b" => :high_sierra
    sha256 "770a22a491ae6316f7b6e56d8039d30693d857336ccc608de865750798480899" => :sierra
    sha256 "c8bc164e5989b6c3fd09a20cb86ff27b88899fafa216b4b8fabcb059bc911874" => :x86_64_linux
  end

  depends_on "cabal-install" => :build
  depends_on "ghc" => :build
  depends_on "pandoc" => :build

  def install
    install_cabal_package
    system "pandoc", "-s", "-f", "markdown-smart", "-t", "man",
                     "shellcheck.1.md", "-o", "shellcheck.1"
    man1.install "shellcheck.1"
  end

  test do
    sh = testpath/"test.sh"
    sh.write <<~EOS
      for f in $(ls *.wav)
      do
        echo "$f"
      done
    EOS
    assert_match "[SC2045]", shell_output("#{bin}/shellcheck -f gcc #{sh}", 1)
  end
end
