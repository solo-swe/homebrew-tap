# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.41.0/atm-0.41.0-aarch64-apple-darwin.tar.gz"
      sha256 "3b0586bf99bdc14896de42d2401fc819d598871cbb54eabf4d73ed72f69ec229"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.41.0/atm-0.41.0-x86_64-apple-darwin.tar.gz"
      sha256 "90b191f7bbd156d5ccfd7c2ec861048f9536fb0ab001d29783ddc16cf960c0e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.41.0/atm-0.41.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94af2e66084793c5848dc299e8bfbc0666c008621434a8f5e740befe58fc0be2"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.41.0/atm-0.41.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1735f34613bb84554bcb3dfaee56c06a26d0bac2efcd72ea82efa640bae910c5"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
