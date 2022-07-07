class GcpTools < Formula
  desc "Tools for Google Cloud Platform"
  homepage "https://github.com/rcmdnk/gcp-tools/"
  url "https://github.com/rcmdnk/gcp-tools/archive/v0.0.1.tar.gz"
  sha256 "2a78362afdfff377e381fe28281895ab42cb85108e871b943b38a91facff0c4c"

  head "https://github.com/rcmdnk/gcp-tools.git"

  def install
    bin.install Dir["bin/*"]
    bash_completion.install "etc/bash_completion.d/gcp-tools"
    zsh_completion.install "share/zsh/site-functions/_gcp-tools"
  end
end
