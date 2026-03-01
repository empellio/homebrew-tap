class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.1/oxmgr-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "909093055ab8f1aa4b697adcd84d7b8662f15a2b3195362c740eea16ec138b42"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.1/oxmgr-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "59678bdeff6a9920aaa4fcb3464f36a29fe8042c533d53f928892bf8c4a8da43"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.1/oxmgr-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b70b690f593d1d9b6c6d2d0d449cb4952b8be9a79c1ee01791151075c59fbef0"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
