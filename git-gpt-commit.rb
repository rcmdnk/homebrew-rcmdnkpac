class GitGptCommit < Formula
  desc "Git command to make a commit message by LLM."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.16.tar.gz"
  sha256 "34b09002046dfaa8a1f2291a521e965a68a77273b2bb672f3f078692cc44c39b"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
