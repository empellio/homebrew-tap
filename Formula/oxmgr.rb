class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.5.0/oxmgr-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "03efc45e685c40d46a3fcaa7c43cb6e4c6004ace21b53e1ea73057324270a7cc"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.5.0/oxmgr-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "e86a1931a26a5416ac3b7bed5c3c63d1caebf76aa0d7ce9c20facdf2b75d21ae"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.5.0/oxmgr-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aaee1673fa1e396181f5a6ff58d812475dcd9373a7c3eb249523d6436c7b0661"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.5.0/oxmgr-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe50b7eca666094fb5ef8ae5fdac4008e0f30feb171927d8d0483a58d79ffaa6"
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
