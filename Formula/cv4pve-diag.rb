class Cv4pveDiag < Formula
  desc "Diagnostic Tool for Proxmox VE"
  homepage "https://github.com/setswei/cv4pve-diag"
  version "2.0.3-test"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.3-test/cv4pve-diag-x86_64.tar.gz"
      sha256 "2e8d31df969a83ac3b2baaa32436c4a9f8a7305945da200f2ed3bfc49e5d8414"
    end
    on_arm do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.3-test/cv4pve-diag-arm64.tar.gz"
      sha256 "81de079cf1310897c2c2df9598c1b9b94998e0f7c594b9ac6569b9f043845fad"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
