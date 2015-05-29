class Screenutf8 < Formula
  homepage "https://www.gnu.org/software/screen"

  stable do
    url "http://ftpmirror.gnu.org/screen/screen-4.2.1.tar.gz"
    mirror "https://ftp.gnu.org/gnu/screen/screen-4.2.1.tar.gz"
    sha1 "21eadf5f1d64120649f3390346253c6bc8a5103c"

    # This patch is to disable the error message
    # "/var/run/utmp: No such file or directory" on launch
    patch :p2 do
      url "https://gist.githubusercontent.com/yujinakayama/4608863/raw/75669072f227b82777df25f99ffd9657bd113847/gistfile1.diff"
      sha1 "93d611f1f46c7bbca5f9575304913bd1c38e183b"
    end

    # These patches are to fix character corruptions on UTF-8
    if build.include? "utf8"
      patch :p2 do
        url "https://gist.github.com/raw/626040/be6a04f0e64c56185ba5850415ac59dad4cd62a0/screen-utf8-nfd.patch"
        sha1 "75522565629e49ce42e9a332795241491a270bad"
      end
      patch :p2 do
        #url "http://zuse.jp/misc/screen-utf8-osc.diff"
        url "https://gist.githubusercontent.com/rcmdnk/143cb56d31335dbccf70/raw/4b3e175946f2366b4076088c1c8f2bbe65b32e16/screen-utf8-osc.diff"
        sha1 "7fa23604bd748dbbdf9eda2ecfe80b0ce9334868"
      end
    end
  end

  head do
    url "git://git.savannah.gnu.org/screen.git", :branch => "master"

    # This patch is to disable the error message
    # "/var/run/utmp: No such file or directory" on launch
    patch :p1 do
      url "https://gist.githubusercontent.com/yujinakayama/4608863/raw/75669072f227b82777df25f99ffd9657bd113847/gistfile1.diff"
      sha1 "93d611f1f46c7bbca5f9575304913bd1c38e183b"
    end

    # These patches are to fix character corruptions on UTF-8
    if build.include? "utf8"
      patch :p1 do
        url "https://gist.github.com/raw/626040/be6a04f0e64c56185ba5850415ac59dad4cd62a0/screen-utf8-nfd.patch"
        sha1 "75522565629e49ce42e9a332795241491a270bad"
      end
      patch :p1 do
        #url "http://zuse.jp/misc/screen-utf8-osc.diff"
        url "https://gist.githubusercontent.com/rcmdnk/143cb56d31335dbccf70/raw/4b3e175946f2366b4076088c1c8f2bbe65b32e16/screen-utf8-osc.diff"
        sha1 "7fa23604bd748dbbdf9eda2ecfe80b0ce9334868"
      end
    end
  end

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  option "utf8", "Apply patches for utf8"

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
