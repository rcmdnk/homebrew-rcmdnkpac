class RcmdnkSshrc < Formula
  desc "Bring your .bashrc, .vimrc, etc. with you when you SSH"
  homepage "https://github.com/rcmdnk/sshrc"
  url "https://github.com/rcmdnk/sshrc/archive/0.6.5.tar.gz"
  sha256 "915d7d795581b2939cf7f599b653e9c20eb49a185c540ecf46e237b548faffb2"

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
