class GitGptCommit < Formula
  desc "Git command to make a commit message by ChatGPT."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.12.tar.gz"
  sha256 "22918cb7ba74e81a00cc68a9a9f83e10403dda74454924bc46ee8cd0196f3bd1"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
