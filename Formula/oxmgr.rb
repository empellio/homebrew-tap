class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.0/oxmgr-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb36b3db3cd2590556ec58a345a277cf165e15d3b669f6558049c2ddf7047819"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.0/oxmgr-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d7993e13299618b1723880b8c01573d0926ae0b85700a4fd94999195164eb065"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.0/oxmgr-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "423e0670b26697b4f06f62fa876a373cd1965b5daacd755ed48987c490a36674"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
