class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.4.0/oxmgr-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "0a1cd97e88347425597f20b8c9947a28b970e93ed64aee2760de7d203d9cee53"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.4.0/oxmgr-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "e31ae02df0da5764382cc3209246c4ab59c1e2a92377b6842175c35f40300eaa"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.4.0/oxmgr-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abe3244d176960ff30a622e7cf43a81e714688198ab172d786be665548846ea0"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.4.0/oxmgr-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3e08c0b305ca5854f34f62665592d9b1aaf8c6074875dadf895dfb5e92edb3f"
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
