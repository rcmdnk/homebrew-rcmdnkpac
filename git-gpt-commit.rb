class GitGptCommit < Formula
  desc "Git command to make a commit message by ChatGPT."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.8.tar.gz"
  sha256 "dd40995e49ee2eb0e277c2d84bee8c6473835176bc1004017b686dd4afc6e7b1"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  depends_on "chatgpt-prompt-wrapper"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
