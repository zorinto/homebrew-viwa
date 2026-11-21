# viwa's source is private, so this formula installs the prebuilt Apple silicon binary from the npm package.
class Viwa < Formula
  desc "Read, reply to and manage WhatsApp Desktop chats from the Mac terminal"
  homepage "https://www.npmjs.com/package/@zorinto/viwa"
  url "https://registry.npmjs.org/@zorinto/viwa/-/viwa-0.5.0.tgz"
  sha256 "fcdd498e6d5b6eae2fc1a49c6b8c7296dd3028562a01b0dc7b4694e420e6646d"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "vendor/viwa"
    prefix.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viwa --version")
  end
end
