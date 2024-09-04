class Screenutf8 < Formula
  desc "Terminal multiplexer with VT100/ANSI terminal emulation, utf8 patch version"
  homepage "https://www.gnu.org/software/screen"
  license "GPL-3.0-or-later"
  revision 1
  head "https://git.savannah.gnu.org/git/screen.git", branch: "master"
  deprecate! date: "2024-09-02", because: "is v4.9, and new screen (5.0.0 and later) does not need these patches. Use screen in core."

  stable do
    url "https://ftp.gnu.org/gnu/screen/screen-4.9.0.tar.gz"
    mirror "https://ftpmirror.gnu.org/screen/screen-4.9.0.tar.gz"
    sha256 "f9335281bb4d1538ed078df78a20c2f39d3af9a4e91c57d084271e0289c730f4"

    # This patch is to disable the error message
    # "/var/run/utmp: No such file or directory" on launch
    patch :p2 do
      url "https://gist.githubusercontent.com/yujinakayama/4608863/raw/75669072f227b82777df25f99ffd9657bd113847/gistfile1.diff"
      sha256 "9c53320cbe3a24c8fb5d77cf701c47918b3fabe8d6f339a00cfdb59e11af0ad5"
    end

    # These patches are to fix character corruptions on UTF-8
    patch :p2 do
      #url "https://gist.github.com/raw/626040/be6a04f0e64c56185ba5850415ac59dad4cd62a0/screen-utf8-nfd.patch"
      url "https://gist.githubusercontent.com/rcmdnk/b0bf57d422c875fb70645556d7770091/raw/16c81629ab2f83ec9e99241a34f9e8b28b773c61/screen-utf8-nfd.patch"
      sha256 "d0c03d35fadeb872891b5b387b219f865dd01bde777f29eed7f5f6f2313e1d45"
    end
    patch :p2 do
      #url "http://zuse.jp/misc/screen-utf8-osc.diff"
      url "https://gist.githubusercontent.com/rcmdnk/8a90eba829fd789a4e058492b494f862/raw/859b14c0ba82e855394dd2ec3df64be79ab452fc/screen-utf8-osc.diff"
      sha256 "e0d75f895b34e2c5107ef1758c738a06273328be4b68e6ea80cff3083ee8659a"
    end
  end

  head do
    url "git://git.savannah.gnu.org/screen.git"
  end

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  uses_from_macos "libxcrypt"
  uses_from_macos "ncurses"

  def install
    cd "src" if build.head?

    # Fix error: dereferencing pointer to incomplete type 'struct utmp'
    ENV.append_to_cflags "-include utmp.h"

    # Fix for Xcode 12 build errors.
    # https://savannah.gnu.org/bugs/index.php?59465
    ENV.append "CFLAGS", "-Wno-implicit-function-declaration"

    # master branch configure script has no
    # --enable-colors256, so don't use it
    # when `brew install screen --HEAD`
    args = [
      "--prefix=#{prefix}",
      "--mandir=#{man}",
      "--infodir=#{info}",
      "--enable-pam",
    ]
    args << "--enable-colors256" unless build.head?

    system "./autogen.sh"
    system "./configure", *args

    system "make"
    system "make", "install"
  end

  test do
    system bin/"screen", "-h"
  end
end
