class GitGptCommit < Formula
  desc "Git command to make a commit message by ChatGPT."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.1.tar.gz"
  sha256 "0653111af97966d496afdf2ecf73b441bbe24bf8fe0ad1079cd0eb36bb70052e"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
