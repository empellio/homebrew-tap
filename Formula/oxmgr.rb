class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.6/oxmgr-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "efe001b3598e9a14f9bd41bf43c4b5f63246caa13ef1f7cd3a86a39b231bfc6e"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.6/oxmgr-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "303a806fb8f61dcf7e33b29703a212e688af2cffb2c2b75387122a788c650804"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.6/oxmgr-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "18d3e99595ba403a8d8e5a68221060270d5fba0a89b1526f47e76b16aa1451a1"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
