class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.9/oxmgr-v0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "567d7a5e674f7282fa064ada171fc04cc4b27674ca09ba8e448799a80f5ff4a3"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.9/oxmgr-v0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "a587339d138e0fd7f7b59a78143b2b8bddd325c63daf6127bbf7f0d9e8e1c1b9"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.9/oxmgr-v0.0.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "211e55dcf0f1f3456fe2fc5a7125ee66423a5519fa9170159eaf2a26a62cba33"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
