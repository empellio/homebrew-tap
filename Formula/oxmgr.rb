class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.7/oxmgr-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "046e727e2613d3af0f525174bdff4fa4b64a467836dd27284e4a89c2f27248ea"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.7/oxmgr-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "d32379bd106fed4fb94e29a070a9d606ce20b54f68c01730039575b618e8f620"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.7/oxmgr-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ef54c661f738a9030c3b8b982b18dd6e869e91a3348f6a205230bf93f6511c17"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
