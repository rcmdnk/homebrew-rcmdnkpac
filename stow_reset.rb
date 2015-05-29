class StowReset < Formula
  homepage "https://github.com/rcmdnk/stow_reset/"
  url "https://github.com/rcmdnk/stow_reset.git", :tag => "v0.0.3",
    :revision => "cc62ba13c52b0fe7a2126e98b0d3eb7476d4b876"
  head "https://github.com/rcmdnk/stow_reset.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
    (bin+"stow_reset").chmod 0755
  end
end
