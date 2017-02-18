class Argo < Formula
  desc "Argo Digital Ocean v2 API cli"
  homepage "https://github.com/osfx/argo"
  url "https://github.com/osfx/argo/releases/download/v0.1.0/argo-0.1.0-darwin-x86_64.tar.gz"
  sha256 "e20844001a23b4e80d7fb562550fa40cc85e4b84fd098dde1dd2a35418e58d97"

  def install
    bin.install("argo")
  end
end
