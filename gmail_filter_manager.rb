class GmailFilterManager < Formula
  include Language::Python::Virtualenv

  desc "Gmail filter manager using YAML format"
  homepage "https://github.com/rcmdnk/gmail_filter_manager/"
  url "https://files.pythonhosted.org/packages/35/7e/72997a440b40e76ab023f614ff374e426be8ca2d707da390e441e8ac5cff/gmail_filter_manager-0.1.3.tar.gz"
  sha256 "9d781a562b9f8f223b4863ecea4beaca6d43896e292bd81639b7c0357d1a0638"
  license "MIT"

  depends_on "python"

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/c7/3b/ebda527b56beb90cb7652cb1c7e4f91f48649fbcd8d2eb2fb6e77cd3329b/ruamel_yaml-0.19.1.tar.gz"
    sha256 "53eb66cd27849eff968ebf8f0bf61f46cdac2da1d1f3576dd4ccee9b25c31993"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gfm_extract", "--help"
    system "#{bin}/gfm_make", "--help"
  end
end
