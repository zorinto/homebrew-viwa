# viwa's source is private, so this formula installs the prebuilt Apple silicon binary from the npm package.
class Viwa < Formula
  desc "Read, reply to and manage WhatsApp Desktop chats from the Mac terminal"
  homepage "https://www.npmjs.com/package/@zorinto/viwa"
  url "https://registry.npmjs.org/@zorinto/viwa/-/viwa-0.5.4.tgz"
  sha256 "e51c8e3c7dd212905d0426411515abd045f4e38f7b4ee1c5d5bb1d6439750aee"
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
