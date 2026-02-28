class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.11/oxmgr-v0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "28ae54393905947136966eaf9bae6e259c9fb30d1f9b8346fd0063dc6ea6aace"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.11/oxmgr-v0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "f5e75a4acebc25c2b41122d6ea69209e6c5867fa9296f7ca61893a90ca53b8fa"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.0.11/oxmgr-v0.0.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e8fcfa0a24441a4af5f07f37559d125a3f8904d9de4f07ff859b171d522f1bcd"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
