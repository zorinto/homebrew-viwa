# chinwag's source is private, so this formula installs the prebuilt Apple silicon binary from the npm package.
class Chinwag < Formula
  desc "Read, reply to and manage WhatsApp Desktop chats from the Mac terminal"
  homepage "https://www.npmjs.com/package/@zorinto/chinwag"
  url "https://registry.npmjs.org/@zorinto/chinwag/-/chinwag-0.4.4.tgz"
  sha256 "cf4c49a240bd4d8a1d73ca880acba6c9c99c0d32d324860c89ca64bdf605e7f1"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "vendor/chinwag"
    prefix.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chinwag --version")
  end
end
