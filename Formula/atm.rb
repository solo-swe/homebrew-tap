# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.32.0/atm-0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "6662eaabf1d1c839b87747f1455d0c2dfe43b6c6ecf3f77861b90b17c03553fe"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.32.0/atm-0.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "01640181324a31f148a2c2f38ec41c5d12b78c3481b5e9c500520785b07c3f10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.32.0/atm-0.32.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d05f00e92394a9530ca41c64d127fb21667ee6bc6794ea1184ef72df4c20c29"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.32.0/atm-0.32.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eecfafd2c907bc7b936676788cafaad563a403fa3d4b012ff312ed3d8925e7b1"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
