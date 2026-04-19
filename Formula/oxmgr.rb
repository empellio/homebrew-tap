class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.3.0/oxmgr-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "2140c0f3570d23e50770cfbc4cfb56e1127b2d944151bd1df78626c0c60971e3"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.3.0/oxmgr-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "70a64a0fe24ad123947fbd127dea4ffb6e76ce4a8df8a26ab6e7a91124d4cf20"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.3.0/oxmgr-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3394e99ed84c6ff035adaae22d1fb19e5394126fe55746937e6ca3da8a291a7f"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.3.0/oxmgr-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bac88d7b0bcd1ef455aeba4473513973ae3edb1884a22a3b9f4c87327187cce9"
    end
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
