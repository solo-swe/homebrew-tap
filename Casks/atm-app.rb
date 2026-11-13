# Written by agentic-task-manager's release (packaging/homebrew-cask.sh): don't edit it by hand.
cask "atm-app" do
  version "0.37.0"
  sha256 "98eac827a492ee65103250b32263b4c68d17bca52cd54f6da634eb2b8568f30a"

  url "https://github.com/solo-swe/agentic-task-manager/releases/download/v#{version}/atm-app-#{version}-universal.dmg"
  name "Agentic Task Manager"
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"

  # Big Sur (the app's minimum) is older than any macOS Homebrew runs on
  depends_on :macos

  # The app updates itself (T-483), its atm CLI with it: brew leaves an installed one alone
  auto_updates true

  app "Agentic Task Manager.app"
  # The app's own atm CLI goes on PATH: the formula's would be a second one
  binary "#{appdir}/Agentic Task Manager.app/Contents/MacOS/atm"

  caveats <<~CAVEATS
    The app brings its own atm CLI. If the atm formula is installed, uninstall it
    (`brew uninstall solo-swe/tap/atm`) so the atm on your PATH is the app's.

    Run `atm agents install` to let your AI agents use atm.
  CAVEATS
end
