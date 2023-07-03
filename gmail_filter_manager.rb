class GmailFilterManager < Formula
  include Language::Python::Virtualenv

  desc "Gmail filer manager using YAML format."
  homepage "https://github.com/rcmdnk/gmail_filter_manager/"
  url "https://files.pythonhosted.org/packages/40/26/aff8d554774eebc09cc96eb2ef9d1588ffadd7f0e01ec155f398d33fc12b/gmail_filter_manager-0.1.1.tar.gz"
  sha256 "7efdabf2f2e6cf384f6b8796dcd24fc9db41ff3d8eb5d2e98fc6249b60baabbb"
  license "MIT"

  depends_on "python"

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/63/dd/b4719a290e49015536bd0ab06ab13e3b468d8697bec6c2f668ac48b05661/ruamel.yaml-0.17.32.tar.gz"
    sha256 "ec939063761914e14542972a5cba6d33c23b0859ab6342f61cf070cfc600efc2"
  end

  resource "ruamel-yaml-clib" do
    url "https://files.pythonhosted.org/packages/d5/31/a3e6411947eb7a4f1c669f887e9e47d61a68f9d117f10c3c620296694a0b/ruamel.yaml.clib-0.2.7.tar.gz"
    sha256 "1f08fd5a2bea9c4180db71678e850b995d2a5f4537be0e94557668cf0f5f9497"
  end

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gfm_extract", "--help"
    system "#{bin}/gfm_make", "--help"
  end
end
