# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.39.0/atm-0.39.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe2320feb798bf087eb5388200cb6779e37725914e111ad622684caf94875424"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.39.0/atm-0.39.0-x86_64-apple-darwin.tar.gz"
      sha256 "70bbb90c8e8c1689756f470b17927dbe6910b777327b331289907ff8df5424f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.39.0/atm-0.39.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b733a55c04879412895f34050d7acfc79cbfadb5fc7f7d51fe1428786f1d694a"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.39.0/atm-0.39.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7507089d92143f608e1cc67b90dfe42e36da38f80e21fc713b205bf94c048d8f"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
