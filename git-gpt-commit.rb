class GitGptCommit < Formula
  desc "Git command to make a commit message by LLM."
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/v0.0.17.tar.gz"
  sha256 "5841cd155682e94a79f9cb0ca439709f87edccb316424ab1cd9755eed7ce1195"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  def install
    bin.install "bin/git-gpt-commit"
  end
end
