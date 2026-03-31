class Cv4pveDiag < Formula
  desc "Diagnostic Tool for Proxmox VE"
  homepage "https://github.com/setswei/cv4pve-diag"
  version "2.0.2"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.2/cv4pve-diag-x86_64.tar.gz"
      sha256 "0cfc0a10db628a80d52458f29dc81fdc5d72f652f56c354aedd8d8660527e81e"
    end
    on_arm do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.2/cv4pve-diag-arm64.tar.gz"
      sha256 "f06cff94fb8e79f2a8c12e31a52bf4397cd79f643d9c5c23e4ee3ea389a2c77b"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
