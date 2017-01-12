class Argo < Formula
  desc "Argo app"
  homepage "https://github.com/osfx/argo"
  url "https://github.com/osfx/argo/releases/download/0.1.1-beta/argo"
  version "0.1.1"
  sha256 "7be02f551bd2982206342a1d0254b702e539355b449dc256e267ccbf4687341b"

  def install
    bin.install("argo")
  end

  test do
#     system ["argo", "-h"]
  end
end
