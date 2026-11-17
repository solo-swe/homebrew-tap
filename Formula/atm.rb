# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.40.0/atm-0.40.0-aarch64-apple-darwin.tar.gz"
      sha256 "0b8cbe49d2de29275f58c9ef1bce05f08f1d866803b39abf0741706d520c8971"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.40.0/atm-0.40.0-x86_64-apple-darwin.tar.gz"
      sha256 "62552905d00ae58891f7d766cae82c9c35955609324930e31dc7e5beafcb2ab4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.40.0/atm-0.40.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b76ec4c6e7ebfa8a4bb8178fa79bf44767a643179e47c0b012c9668ebb66ab77"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.40.0/atm-0.40.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b6ea135f8b2d4fcdf8e9d7d54f780e3691221f3f9431f88b6e58195cc13177d"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
