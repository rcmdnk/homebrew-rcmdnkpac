class Screenutf8 < Formula
  homepage "https://www.gnu.org/software/screen"

  stable do
    url "https://ftp.gnu.org/gnu/screen/screen-4.7.0.tar.gz"
    mirror "https://ftpmirror.gnu.org/screen/screen-4.7.0.tar.gz"
    sha256 "da775328fa783bd2a787d722014dbd99c6093effc11f337827604c2efc5d20c1"

    # This patch is to disable the error message
    # "/var/run/utmp: No such file or directory" on launch
    patch :p2 do
      url "https://gist.githubusercontent.com/yujinakayama/4608863/raw/75669072f227b82777df25f99ffd9657bd113847/gistfile1.diff"
      sha256 "9c53320cbe3a24c8fb5d77cf701c47918b3fabe8d6f339a00cfdb59e11af0ad5"
    end

    # These patches are to fix character corruptions on UTF-8
    patch :p2 do
      #url "https://gist.github.com/raw/626040/be6a04f0e64c56185ba5850415ac59dad4cd62a0/screen-utf8-nfd.patch"
      url "https://gist.githubusercontent.com/rcmdnk/b0bf57d422c875fb70645556d7770091/raw/26d43f3581a77d42027238a4f65130d4753944dc/screen-utf8-nfd.patch"
      sha256 "77b85f3f9d715566879bb0062cf919e0701f141b2d184b7d3ecfcf6767a4411e"
    end
    patch :p2 do
      #url "http://zuse.jp/misc/screen-utf8-osc.diff"
      url "https://gist.githubusercontent.com/rcmdnk/8a90eba829fd789a4e058492b494f862/raw/75825a6d3a385f02bc1c1353752f2d1ea9a91b16/screen-utf8-osc.diff"
      sha256 "f2d0925df132e56984055d13a8ba62ee2fe7d61097eab1131d0091f555b70ca5"
    end
  end

  head do
    url "git://git.savannah.gnu.org/screen.git"
  end

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  option "utf8", "Apply patches for utf8 (default, remained as option for backward compatibility)"

  def install

    if build.head?
      cd "src"
    end

    # With parallel build, it fails
    # because of trying to compile files which depend osdef.h
    # before osdef.sh script generates it.
    ENV.deparallelize

    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--infodir=#{info}",
                          "--enable-colors256"
    system "make"
    system "make install"
  end
end
