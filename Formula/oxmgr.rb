class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.6/oxmgr-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "0038f70470d829b7b2a36d147c90b1146b948a94848f006180a09c24121d25df"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.6/oxmgr-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "5e70ca1ddf99fa8f33a70270b9005e488a2cf5b90e5da3c961f038aa9e39b56f"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.6/oxmgr-v0.0.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cf0af3ea2efaf51862c8491555d718f319644f7411a099f715d18d1430605742"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
