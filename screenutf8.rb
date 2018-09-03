class Screenutf8 < Formula
  homepage "https://www.gnu.org/software/screen"

  stable do
    url "https://ftp.gnu.org/gnu/screen/screen-4.6.2.tar.gz"
    mirror "https://ftpmirror.gnu.org/screen/screen-4.6.2.tar.gz"
    sha256 "1b6922520e6a0ce5e28768d620b0f640a6631397f95ccb043b70b91bb503fa3a"

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
      url "https://gist.githubusercontent.com/rcmdnk/8a90eba829fd789a4e058492b494f862/raw/b3104ce355ed5ef17df77caa2af7d99c86a56457/screen-utf8-osc.diff"
      sha256 "f3ecd4597b19e548e4c220fc356ab19165950c3ac3a9b8994df68b07741b3980"
    end
  end

  head do
    url "git://git.savannah.gnu.org/screen.git"

    ## These patches are to fix character corruptions on UTF-8
    #patch do
    #  #url "https://gist.github.com/raw/626040/be6a04f0e64c56185ba5850415ac59dad4cd62a0/screen-utf8-nfd.patch"
    #  url "https://gist.githubusercontent.com/rcmdnk/b0bf57d422c875fb70645556d7770091/raw/26d43f3581a77d42027238a4f65130d4753944dc/screen-utf8-nfd.patch"
    #  sha256 "77b85f3f9d715566879bb0062cf919e0701f141b2d184b7d3ecfcf6767a4411e"
    #end
    #patch do
    #  #url "http://zuse.jp/misc/screen-utf8-osc.diff"
    #  url "https://gist.githubusercontent.com/rcmdnk/8a90eba829fd789a4e058492b494f862/raw/b3104ce355ed5ef17df77caa2af7d99c86a56457/screen-utf8-osc.diff"
    #  sha256 "f3ecd4597b19e548e4c220fc356ab19165950c3ac3a9b8994df68b07741b3980"
    #end
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
