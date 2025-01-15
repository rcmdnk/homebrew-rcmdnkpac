class GitGptCommit < Formula
  desc "Git command to make a commit message by ChatGPT."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.9.tar.gz"
  sha256 "9e066172cfd993066fcd0c0e885fc9048d89f6c7fddb78a3c1e013f0d3afcf67"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  depends_on "chatgpt-prompt-wrapper"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
