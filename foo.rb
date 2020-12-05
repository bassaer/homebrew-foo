class Foo < Formula
  desc "this is foo"
  homepage "http://github.com/bassaer/homebrew-foo"
  url "https://github.com/bassaer/homebrew-foo/releases/download/0.0.1/foo.tar.gz"
  sha256 "c582cc766333a9fe28b604698f9730bf04a6091f327d9679ba14a28490aa4499"
  license "MIT"

  def install
      bin.install 'foo'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test foo`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

