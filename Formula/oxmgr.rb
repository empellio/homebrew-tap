class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.8/oxmgr-v0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "8e5cc2e3fa03ff75c4f1a6379814ae8de0a7d7ac471d4259908e19bb6a2c9dfd"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.8/oxmgr-v0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "4503c9c95a0de24c1077bf2536c82c3d14fef856748b0516b7db3fc74c85dbbc"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.8/oxmgr-v0.0.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7ecf2b75a20a8c78a69cc8f890543d8570b764e899a2b5b969f8869430dbb566"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
