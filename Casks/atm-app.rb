# Written by agentic-task-manager's release (packaging/homebrew-cask.sh): don't edit it by hand.
cask "atm-app" do
  version "0.35.0"
  sha256 "96090b26ddccfcaa9ee2fd2547fde4946e28bb818195ca2cd83f8134137f817e"

  url "https://github.com/solo-swe/agentic-task-manager/releases/download/v#{version}/atm-app-#{version}-universal.dmg"
  name "atm"
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"

  # Big Sur (the app's minimum) is older than any macOS Homebrew runs on
  depends_on :macos

  # The app updates itself (T-483), its atm CLI with it: brew leaves an installed one alone
  auto_updates true

  app "atm.app"
  # The app's own atm CLI goes on PATH: the formula's would be a second one
  binary "#{appdir}/atm.app/Contents/MacOS/atm"

  caveats <<~CAVEATS
    The app brings its own atm CLI. If the atm formula is installed, uninstall it
    (`brew uninstall solo-swe/tap/atm`) so the atm on your PATH is the app's.

    Run `atm agents install` to let your AI agents use atm.
  CAVEATS
end
