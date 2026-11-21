# viwa's source is private, so this formula installs the prebuilt Apple silicon binary from the npm package.
class Viwa < Formula
  desc "Read, reply to and manage WhatsApp Desktop chats from the Mac terminal"
  homepage "https://www.npmjs.com/package/@zorinto/viwa"
  url "https://registry.npmjs.org/@zorinto/viwa/-/viwa-0.5.3.tgz"
  sha256 "3f7c74c16f5d3796bfe92a122cd0e8fd351cf09c304ac1cfd5a77e960d8e11ae"
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
