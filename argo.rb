class Argo < Formula
  homepage "https://github.com/osfx/argo"
  url "https://github.com/osfx/argo/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "7be02f551bd2982206342a1d0254b702e539355b449dc256e267ccbf4687341b"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make" # if this fails, try separate make/make install steps
  end
  test do
    system ["argo", "-h"]
  # `test do` will create, run in and delete a temporary directory.
  #
  # This test will fail and we won't accept that! It's enough to just replace
  # "false" with the main program this formula installs, but it'd be nice if you
  # were more thorough. Run the test with `brew test argo`. Options passed
  # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
  #
  # The installed folder is not in the path, so use the entire path to any
  # executables being tested: `system "#{bin}/program", "do", "something"`.
  # system "false"
end
end
