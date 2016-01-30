class StowReset < Formula
  desc "Command to reset stow directory, especially for the case in which the package installs symbolic links."
  homepage "https://github.com/rcmdnk/stow_reset/"
  url "https://github.com/rcmdnk/stow_reset/archive/v0.0.3.tar.gz"
  sha256 "362c7dfd766593d69625dcfea90709def0ce7792a18095391b7560dc8c755b2b"

  head "https://github.com/rcmdnk/stow_reset.git"

  def install
    bin.install "stow_reset"
  end
end
