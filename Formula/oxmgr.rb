class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.5/oxmgr-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "9b136606d158986d5cf4b1b86f04ba44f297cf90d80a1e0d3dc05371c3287757"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.5/oxmgr-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "cd36a68a4ebb025212d5fa10fdad1427788adf79d8092091f0463e3532ea81ec"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.5/oxmgr-v0.0.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ee26b8e626f661afbc4997be0a2f47ee4473aa72a855963531d841936f822991"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
