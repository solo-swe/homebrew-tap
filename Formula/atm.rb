# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.42.0/atm-0.42.0-aarch64-apple-darwin.tar.gz"
      sha256 "e135e0d086be294de95147dac148de89d14bdeb0fe9d6809de17856e35007b66"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.42.0/atm-0.42.0-x86_64-apple-darwin.tar.gz"
      sha256 "3da17fdbb5b2a7408f0d492239ccb8826aba58f25f0c51e2f5d093a451959e48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.42.0/atm-0.42.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37a159b19e5cfab5cd70e76aee6472c0f24501084e1d2dcd985100e89db11da4"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.42.0/atm-0.42.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dafb54e7a79035bc9e870586f861d3156095152969a9867bbfcc5a3228527401"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
