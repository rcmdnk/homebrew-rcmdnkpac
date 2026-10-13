class GitGptCommit < Formula
  desc "Git command to make a commit message by LLM"
  homepage "https://github.com/rcmdnk/git-gpt-commit/"
  url "https://github.com/rcmdnk/git-gpt-commit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6780153f4fde0f52b105ecae76a8a11636040ca6513407411d3ddd0535c1ad6d"
  license "Apache-2.0"

  head "https://github.com/rcmdnk/git-gpt-commit.git"

  def install
    bin.install "bin/git-gpt-commit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-gpt-commit --version")
  end
end
