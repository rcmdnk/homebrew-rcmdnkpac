class RcmdnkSshrc < Formula
  desc "Bring your .bashrc, .vimrc, etc. with you when you SSH"
  homepage "https://github.com/rcmdnk/sshrc"
  url "https://github.com/rcmdnk/sshrc/archive/0.6.4.tar.gz"
  sha256 "7c2ab8e6e49c5f5c5625f8accc4e0a4db09d0d76faa2ebaf9a52f04e5857e810"

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
