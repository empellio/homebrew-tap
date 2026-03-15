class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.8/oxmgr-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "0267a74f28f3c489f94faca794bb9b85e59543eaeed97d655edc505c3474cfc8"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.8/oxmgr-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "0d7b25941d7b08e8ea9adda50a995fa97d83e339461dbf60ce41f6e8868a7c6c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.8/oxmgr-v0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e072a51f04cf0250b167b06901a03bb564f68e7e2e09e4281537354d58a93ff"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.8/oxmgr-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33918f1280098c744272c4f2e6f562eb0f44dab5785e724f8b9c9ef72541009c"
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
