class Cv4pveDiag < Formula
  desc "Diagnostic Tool for Proxmox VE"
  homepage "https://github.com/setswei/cv4pve-diag"
  version "2.0.2"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.2/cv4pve-diag-x86_64.tar.gz"
      sha256 "e4825987159caefe0ed7c5b0e25e3645c441d4a5a7fd7313ffce93c11bc8db38"
    end
    on_arm do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.2/cv4pve-diag-arm64.tar.gz"
      sha256 "932eaf4839e1fa3f997b78118c9ce8f309780271502a32dbc20763fc78d218ae"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
