class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.5/oxmgr-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "8309798e9ac6e9a8032819347cb538ab213f725f2a80c57a579b75b0b67c56bb"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.5/oxmgr-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "cb07289333d45207b76acac75a0be08cba9859cfa237401dd8272ce97e116771"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.5/oxmgr-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "898b115b89ebe7543d172f60149c1b64c94624b1502f306f222c9e8ae448ff88"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
