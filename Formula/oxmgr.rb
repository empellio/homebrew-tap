class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.9/oxmgr-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "5c80b762bbf20fb816f6e4d34a7fd5f1b84be3e97ec29fece17d90bcdd5395e6"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.9/oxmgr-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "94a30e34e7de63031b8577120e1fb19cf34c8774211a3063db6a4cd128b68973"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.9/oxmgr-v0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c51510fca2b185989d7407ecff493ca69b1c7b8c63a15e61b3fd25f78ad1be5"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.9/oxmgr-v0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce451246ccf3f01b7c5a9ad9d3bc776b0a17f61cb2851b247e2793b80979a671"
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
