class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.2.0/oxmgr-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "cb86cecba4b09a710175883fabf562a6170729167f484db5e4ee916040c012e6"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.2.0/oxmgr-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "633ae9ab63168989b1c1293797ee6262f90e4209b147352eee88778f0e0f18ba"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.2.0/oxmgr-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46842152a23ccf4eb428e0b5c91435622935b3b578eed14c07eb3f84fdf3208b"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.2.0/oxmgr-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "043fd2f1d3e273451b008e6e38fd8b031ca60e2053b196f43bda49d38b2798d1"
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
