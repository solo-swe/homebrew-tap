# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.34.0/atm-0.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "554568b1efb77478902750753e3d6384beeff27d9ec62317eb2bb494bd515725"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.34.0/atm-0.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "7a0bdde7f271f0f700736ee3e95b96d175e28ee76013b2e856e4381bffd1a6ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.34.0/atm-0.34.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5dd757a7d4261fc255a67b40b34fc7b42eb6a5f50fe1ac14b6abf2ecc142c404"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.34.0/atm-0.34.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33e49c1c499152ef68ab8d4d858e6060249df244c79eb071bc46379713828beb"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
