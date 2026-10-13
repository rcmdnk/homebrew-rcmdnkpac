class RcmdnkSshrc < Formula
  desc "Bring your .bashrc, .vimrc, etc. with you when you SSH"
  homepage "https://github.com/rcmdnk/sshrc"
  url "https://github.com/rcmdnk/sshrc/archive/refs/tags/0.6.6.tar.gz"
  sha256 "1bd4e4c2a42c4842fa2835c067ecc2f68cdaee48192cd939b390032119b3f4d3"

  head "https://github.com/rcmdnk/sshrc.git"

  def install
    bin.install %w[sshrc moshrc]
  end

  test do
    # sshrc requires ~/.sshrc and a host; without a host it falls back to
    # plain ssh and exits 1. Stub ssh so no connection is attempted.
    touch testpath/".sshrc"
    (testpath/"ssh").write <<~EOS
      #!/bin/sh
      echo "$@" > "#{testpath}/ssh.log"
    EOS
    chmod 0755, testpath/"ssh"
    ENV.prepend_path "PATH", testpath
    ENV["SSHHOME"] = testpath
    system bin/"sshrc", "example.com"
    assert_match "example.com", (testpath/"ssh.log").read
  end
end
