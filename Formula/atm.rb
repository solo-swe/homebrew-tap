# Written by agentic-task-manager's release (packaging/homebrew-formula.sh): don't edit it by hand.
class Atm < Formula
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.43.0/atm-0.43.0-aarch64-apple-darwin.tar.gz"
      sha256 "a5c5452d0b8c0087ec011c8484d2a287b69ee9ec7deedc077ce8969bd76807c6"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.43.0/atm-0.43.0-x86_64-apple-darwin.tar.gz"
      sha256 "13fede9c82434ddcfb1a906ee09ba1611cf8ab25ade9ee3d8c0263bd1a2be7bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.43.0/atm-0.43.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63f9a44bd8ead146833e055ff9a224267a40e327c7f29fbd8ae41571fc110da6"
    end
    on_intel do
      url "https://github.com/solo-swe/agentic-task-manager/releases/download/v0.43.0/atm-0.43.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b24381803b33aff5165d7e07334ee35036e7e31153268cddad3066e6dc2bde2"
    end
  end

  def install
    bin.install "atm"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/atm version").strip
  end
end
