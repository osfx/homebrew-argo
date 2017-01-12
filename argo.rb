class Argo < Formula
  homepage "https://github.com/osfx/argo"
  url "https://github.com/osfx/argo/archive/v0.1.0.tar.gz"
  version "0.1.0"
  # sha256 "7b08d37c1eff84b648f57468f86262ee0980e235da27b7c64a49d14b0639c935"

  def install
    bin.install("argo")
  end

  test do
    system ["argo", "-h"]
  end
end
