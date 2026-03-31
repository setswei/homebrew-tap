class Cv4pveDiag < Formula
  desc "Diagnostic Tool for Proxmox VE"
  homepage "https://github.com/setswei/cv4pve-diag"
  version "2.0.3"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.3/cv4pve-diag-x86_64.tar.gz"
      sha256 "fb2809b8b0c328fd6cb03f4508edd8f8536cdf787ace40af1c5c12dbe8cda001"
    end
    on_arm do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.3/cv4pve-diag-arm64.tar.gz"
      sha256 "1a8ebf25af332226c7e255e8db89f74ae5d6e95ce1fbb489b8639b9d33ff9d85"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
