class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.3/oxmgr-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "115185ee07baa96ceda3df17dff2ff83396f56cccb443d3e09e308fb3995ff87"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.3/oxmgr-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "f48de25a35e2336214495cf47be315234bbb4c1a22948a8e026b5d19555b6f49"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.3/oxmgr-v0.0.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2a4f53d928969f009e5249378ca263b0f650be04b9394e38d0fd95e2095310a6"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
