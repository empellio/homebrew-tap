class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.4/oxmgr-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "526611aa5c7b7124ee10e7f490f1f457207a73ce101fa5881c96a6bab5c5072b"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.4/oxmgr-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "beacc8d4aba428f17156d408207404b9cf203b5080b5b10882f5b8f14556b208"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.4/oxmgr-v0.0.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1f289bd3968790dac4265219d5619278b670b0b5b2968ccffe2404bf5a7cf096"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
