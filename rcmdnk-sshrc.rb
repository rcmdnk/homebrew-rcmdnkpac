class RcmdnkSshrc < Formula
  desc "Bring your .bashrc, .vimrc, etc. with you when you SSH"
  homepage "https://github.com/rcmdnk/sshrc"
  url "https://github.com/rcmdnk/sshrc/archive/0.6.6.tar.gz"
  sha256 "1bd4e4c2a42c4842fa2835c067ecc2f68cdaee48192cd939b390032119b3f4d3"

  head "https://github.com/rcmdnk/sshrc.git"

  def install
    bin.install %w[sshrc moshrc]
  end

  test do
    touch testpath/".sshrc"
    (testpath/"ssh").write <<~EOS
      #!/bin/sh
      true
    EOS
    chmod 0755, testpath/"ssh"
    ENV.prepend_path "PATH", testpath
    system "#{bin}/sshrc"
  end
end
