# viwa's source is private, so this formula installs the prebuilt Apple silicon binary from the npm package.
class Viwa < Formula
  desc "Read, reply to and manage WhatsApp Desktop chats from the Mac terminal"
  homepage "https://www.npmjs.com/package/@zorinto/viwa"
  url "https://registry.npmjs.org/@zorinto/viwa/-/viwa-0.5.7.tgz"
  sha256 "2ad3431d780aa887098efba1b1224870f1f2453dda397331b9b062e55e94ba86"
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
