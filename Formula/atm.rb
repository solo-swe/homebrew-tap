# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.35.0/atm-0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "1c59ff090b8ddb8b513bf67e0d45b60cab1dbf6b30ca74d40a801288bc5fbc19"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.35.0/atm-0.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "fbe30d320cdc5e411ea41b7412de8ebc9d5d3863ae4392e7880df70ee0249037"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.35.0/atm-0.35.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6a2297043c9e4fa95c9d4a7d84078b15e06679e8c656373a0750a8960cc0425"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.35.0/atm-0.35.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87343224fe450d9d5e80146a7e2e93a29fecf3bf6785b7b55aa3856b28f89953"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
