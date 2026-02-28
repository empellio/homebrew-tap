class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.10/oxmgr-v0.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "07b3af63ec4fc9e2fd0b9208746779b65b48111cb902b61088fefe5b63709d3d"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.10/oxmgr-v0.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "ee82d7a76eff9284dcc3eab3492b112a1cc5860b49580970080a77b619f3cfde"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.10/oxmgr-v0.0.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b9950338d21c683d1959983631f4307adf6c93ac65fe976a5a238d65d7df4253"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
