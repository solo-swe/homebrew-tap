# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.37.0/atm-0.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "2c5c3eaf4985ed95f2b7e66df5886ff2972be792b566c006c6a21def7902c433"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.37.0/atm-0.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "02314d2f122fc86e4fd5fa64d7715f9c1c212a68e7403e6873173365a7364670"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.37.0/atm-0.37.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5358e41b53f47a845a57790e59382e03643cf34b41437cde6f611fbcf1af36c"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.37.0/atm-0.37.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fd740e43685e757ba8de09db1cbcc8e5dc9d63a77d874fc3ff0192a2bc781f3"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
