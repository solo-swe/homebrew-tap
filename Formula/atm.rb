# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.38.0/atm-0.38.0-aarch64-apple-darwin.tar.gz"
      sha256 "ad6dd789f5e7dd1f0ec895ffd8e91acd18413a8c9ac02d6aa9743b437a4cbffc"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.38.0/atm-0.38.0-x86_64-apple-darwin.tar.gz"
      sha256 "84d822ef805df11b5ee42a4ec5877a0fe1dbcb33a2caeacee382870cd06198fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.38.0/atm-0.38.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb0ebd214acfcdb78ac7fdcaf8c07b0a010cb443fc1905a013939d750ab1bc22"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.38.0/atm-0.38.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15a88576d06201b4ef54beb81002e47341ddf0d250e959188a79b0b11e29a2fd"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
