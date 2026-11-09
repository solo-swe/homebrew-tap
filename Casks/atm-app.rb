# Written by agentic-task-manager's release (packaging/homebrew-cask.sh): don't edit it by hand.
cask "atm-app" do
  version "0.34.0"
  sha256 "6647b1e1ceccf81f8de1ccd1fcfb5072366ff5103cc7f7e443c2392793c9ea52"

  url "https://github.com/solo-swe/agentic-task-manager/releases/download/v#{version}/atm-app-#{version}-universal.dmg"
  name "atm"
  desc "Agentic Task Manager: file-based tasks for agentic development, and their dashboard"
  homepage "https://github.com/solo-swe/agentic-task-manager"

  depends_on macos: ">= :big_sur"
  # The app's own atm CLI goes on PATH: the formula's would be a second one
  conflicts_with formula: "solo-swe/tap/atm"

  app "atm.app"
  binary "#{appdir}/atm.app/Contents/MacOS/atm"

  caveats <<~CAVEATS
    Run `atm agents install` to let your AI agents use atm.
  CAVEATS
end
