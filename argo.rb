 class Argo < Formula
 6   desc "Argo Digital Ocean v2 API cli"
 7   homepage "https://github.com/osfx/argo"
 8   url "https://github.com/osfx/argo/releases/download/v0.1.0/argo-0.1.0-darwin-x86_64.tar.gz"
 9   sha256 "e20844001a23b4e80d7fb562550fa40cc85e4b84fd098dde1dd2a35418e58d97"
10
11   # depends_on "cmake" => :build
12
13   def install
14     # ENV.deparallelize  # if your formula fails when building in parallel
15
16     # Remove unrecognized options if warned by configure
17     system "./configure", "--disable-debug",
18                           "--disable-dependency-tracking",
19                           "--disable-silent-rules",
20                           "--prefix=#{prefix}"
21     # system "cmake", ".", *std_cmake_args
22     system "make", "install" # if this fails, try separate make/make install steps
23   end
24
25   test do
26     # `test do` will create, run in and delete a temporary directory.
27     #
28     # This test will fail and we won't accept that! It's enough to just replace
29     # "false" with the main program this formula installs, but it'd be nice if you
30     # were more thorough. Run the test with `brew test argo`. Options passed
31     # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
32     #
33     # The installed folder is not in the path, so use the entire path to any
34     # executables being tested: `system "#{bin}/program", "do", "something"`.
35     system "false"
36   end
37 end
