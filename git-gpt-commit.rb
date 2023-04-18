class GitGptCommit < Formula
  desc "Git command to make a commit message by ChatGPT."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.4.tar.gz"
  sha256 "31531d84e8e7ff37cfd354c68046fc85f874d8c48f56cbd260efb31fc9a53373"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  depends_on "chatgpt-prompt-wrapper"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
