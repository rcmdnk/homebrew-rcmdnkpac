class GitGptCommit < Formula
  desc "Git command to make a commit message by ChatGPT."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.8.tar.gz"
  sha256 "427bcf37ffbc00c5d9d61d61c21cfcf3edd636d36b5574ea42eb5e048f2057d6"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  depends_on "chatgpt-prompt-wrapper"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
