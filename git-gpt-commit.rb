class GitGptCommit < Formula
  desc "Git command to make a commit message by LLM."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.14.tar.gz"
  sha256 "decb01ee41952fcd43cb9f538b36450df5371a1e03914898679431655414123d"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
