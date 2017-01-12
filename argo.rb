class Argo < Formula
  homepage "https://github.com/osfx/argo"
  url "https://github.com/osfx/argo/archive/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "80e4622eb2b70701c6e8d5fadfea7e1efcef245e553029a9b14a35c484ebed85"

  def install
    bin.install("argo")
  end

  test do
    system ["argo", "-h"]
  end
end
