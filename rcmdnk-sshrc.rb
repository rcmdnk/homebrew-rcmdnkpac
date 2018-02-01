class RcmdnkSshrc < Formula
  desc "Bring your .bashrc, .vimrc, etc. with you when you SSH"
  homepage "https://github.com/rcmdnk/sshrc"
  url "https://github.com/rcmdnk/sshrc/archive/0.6.2.tar.gz"
  sha256 "0df93b717295eb2e28697b540712f72fb49b75d156fcaa7ebda7037da6d59af8"

  head "https://github.com/rcmdnk/sshrc.git"

  bottle :unneeded

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
