class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.7/oxmgr-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "dcaff2d5b0ec4ee4bedae16f805f299ac7adfee96858c9b3bf5c4722bf71421d"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.7/oxmgr-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "51498347c60dc001f18c06c658b777085c9fdecfa6900a313ef277239aa51498"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.7/oxmgr-v0.0.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8eafc1f7ee4395b872b85133628156b33549e0c529f7f45f15f879e34cd124f9"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
