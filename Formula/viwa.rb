# viwa's source is private, so this formula installs the prebuilt Apple silicon binary from the npm package.
class Viwa < Formula
  desc "Read, reply to and manage WhatsApp Desktop chats from the Mac terminal"
  homepage "https://www.npmjs.com/package/@zorinto/viwa"
  url "https://registry.npmjs.org/@zorinto/viwa/-/viwa-0.5.1.tgz"
  sha256 "6201206c255eaa1ef0979394853f9a69833efc02718702d9d0850ff80db13b7a"
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
