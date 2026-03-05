class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.4/oxmgr-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "16f58574a57e7d27df8a2741d8ba695808f05df37e85f32dc1824ef442435431"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.4/oxmgr-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "026b0a09b328d8b413dbae67eb92c490ea31f8d279a5f0892d9340e9c07bf28f"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.4/oxmgr-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bb0f352440de39c20adc5a5d47375b0ecd722183e37459ccbb9f17a58ed721ae"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
