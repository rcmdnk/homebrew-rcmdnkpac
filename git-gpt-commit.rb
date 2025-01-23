class GitGptCommit < Formula
  desc "Git command to make a commit message by LLM."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.13.tar.gz"
  sha256 "1e9864100a5e6cfcb4ae37a33a64ef70b3f2d49f1677f0be7561bb4b97d43ed5"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
