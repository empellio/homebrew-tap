class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.12/oxmgr-v0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "d14bb1178b6b62ace0e61d793f72bd27a3210ae06c75a696ced2ea62b9d74331"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.12/oxmgr-v0.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "0caac46ee56a02435f98c75aad3fd25d9e1435bdac494cdfe588325c15c42808"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.12/oxmgr-v0.0.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "41b34f912b9ce6e956934cebe95e2cf5d45460c2e124861c3fe284da2b11cf7b"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
