# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.36.0/atm-0.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "ab5562853b8d41dcba3cae033943b5bccd0aeb3873f1c4d254ac1a755be6b9e4"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.36.0/atm-0.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "e95d4548a3269ae922f96968b6f93f1d630963d514b059af657f293abfc0add6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.36.0/atm-0.36.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39f0ca1dd9f24249fc23e7ec3ef8030a460fe30bf7e75c054c4825f015f3ce71"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.36.0/atm-0.36.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "079323f2bd32e57a98b1494da36b3258a414e8433368f22a1bc9f0fe9a862708"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
