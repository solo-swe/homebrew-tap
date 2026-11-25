# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.44.0/atm-0.44.0-aarch64-apple-darwin.tar.gz"
      sha256 "e61eead58ed255ce9800fa804ce1f14bdab1c84cbb74d4904856fe4d745111fb"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.44.0/atm-0.44.0-x86_64-apple-darwin.tar.gz"
      sha256 "abe20ceaeb63fb1a4203b29975343d10695eb4fe3e8068e2b4c4b7148626fa94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.44.0/atm-0.44.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3592d62fad44707eee330abfa5cd490c0214578cfc6c07e166edfd244f3e8f7"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.44.0/atm-0.44.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f715c09c520cfd93a4864b6c9c9c849d1d2af69cb72e356143df5035c33b9096"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
