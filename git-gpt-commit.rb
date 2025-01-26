class GitGptCommit < Formula
  desc "Git command to make a commit message by LLM."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.15.tar.gz"
  sha256 "76dbfa56707999b83fe60b8ecb99d87c7408674a4ea49143e56f05dbead1f254"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
