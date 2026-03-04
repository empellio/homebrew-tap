class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.3/oxmgr-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "7770fdd5e84460812f273ea6c222424422bc7db3c7ba639873c2e8d7e6df1a2d"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.3/oxmgr-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "0a5012b9278cb3cf188ad1c1dd3b569d6a5a688dfec75da7bafee24ceef84f61"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.3/oxmgr-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bc899ace02edd2b9f47f4ed74167848c2abe916df65f7660f57c5f8677a17335"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
