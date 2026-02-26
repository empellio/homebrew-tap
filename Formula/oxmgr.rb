class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.2/oxmgr-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "336a4a1301b522c6752b8906db6232d965fd987123172e1ff5de168a9011af09"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.2/oxmgr-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "21bd2ed698caa202b7931e90fc0007645e60cc6711f8e6d943f3b81ad2aa2222"
    end
  end

  on_linux do
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.2/oxmgr-v0.0.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f8e79c0ee865ab7735d53ca4e8a2697865bbbfe1e791c44e15ee608f7cd2b8ab"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
