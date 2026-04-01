class Cv4pveDiag < Formula
  desc "Diagnostic Tool for Proxmox VE"
  homepage "https://github.com/setswei/cv4pve-diag"
  version "2.0.3"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.3/cv4pve-diag-osx-x64.zip"
      sha256 "495010970e6a8bf402e337e595f5411eeaf95929c5d423fd5449fad0735e2087"
    end
    on_arm do
      url "https://github.com/setswei/cv4pve-diag/releases/download/v2.0.3/cv4pve-diag-osx-arm64.zip"
      sha256 "a4e8c5c02f09f91c600367b25d7d725e6db8e6232eb78cfe5e168096055be3c7"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
