class GitGptCommit < Formula
  desc "Git command to make a commit message by ChatGPT."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.6.tar.gz"
  sha256 "2c2576516b3e8ec5d6c24939839d2be52ae1e89403060e0e39b2ecde2a9c0ee1"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  depends_on "chatgpt-prompt-wrapper"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
