# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.33.0/atm-0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "0229f204d4c5da74579703fd6aa5fe3e7ad631c3599c7c6c3bdc91aa64371a5e"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.33.0/atm-0.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "747fb931c7eec9e91f5ebacdb0a8ad4151124b29eb93f1ebb7f37e173bcdb587"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.33.0/atm-0.33.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0f2994098144e6f950e4c03a7e86f8312580f6fe73d1c2b0697adbb458897ca"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.33.0/atm-0.33.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abce8daef8acc67eb4b919d58ca4c0bc8a2bb19bd0812b1e650845f192c5fbc7"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
