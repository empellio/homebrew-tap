class Oxmgr < Formula
  desc "Lightweight cross-platform process manager"
  homepage "https://github.com/Vladimir-Urik/OxMgr"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.2/oxmgr-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "03818ab51a7dd40a83e451251aec0ef686eac1638ea6bac5578bd1e43e39af8c"
    else
      url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.2/oxmgr-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "101ee426310d57c7e07a4dcbbcf534b6a1fd577a164189b26ea98efb8dc76b81"
    end
  elsif OS.linux?
    url "https://github.com/Vladimir-Urik/OxMgr/releases/download/v0.1.2/oxmgr-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "10beae9c65fcb26aca53424a2ed749762d8fc1f1e707c8706ea89aab7a372791"
  end

  def install
    bin.install "oxmgr"
  end

  test do
    output = shell_output("#{bin}/oxmgr --help")
    assert_match "Oxmgr process manager", output
  end
end
