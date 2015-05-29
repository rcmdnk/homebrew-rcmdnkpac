class SdCl < Formula
  homepage 'https://github.com/rcmdnk/sd_cl/'
  url 'https://github.com/rcmdnk/sd_cl.git', :tag => "v0.2.1",
    :revision => "da1cd90811a18e5c23d967babd72cc966431c4cb"
  head 'https://github.com/rcmdnk/sd_cl.git', :branch => 'master'

  depends_on 'sentaku'

  def install
    prefix.install 'etc'
  end
end
