cask "agentic-status-bar" do
  version "0.2.2"
  sha256 "9c717d9c6f408169a474d3ef3b2e3740bff70e55a14c2b00ae108e7c8e162509"

  url "https://github.com/solo-swe/agentic-status-bar/releases/download/v#{version}/agentic-status-bar-#{version}.zip"
  name "Agentic Status Bar"
  desc "Menu bar status for Claude Code sessions"
  homepage "https://github.com/solo-swe/agentic-status-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself with Sparkle.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Agentic Status Bar.app"

  # Remove the Claude Code hooks while the app is still there; state and config stay (zap removes them).
  uninstall quit:   "com.hakanserce.agentic-status-bar",
            script: {
              executable: "#{appdir}/Agentic Status Bar.app/Contents/Helpers/asb",
              args:       ["uninstall"],
            }

  zap trash: [
    "~/.claude/agentic-status-bar",
    "~/.config/agentic-status-bar",
    "~/Library/Application Support/agentic-status-bar",
    "~/Library/Caches/com.hakanserce.agentic-status-bar",
    "~/Library/HTTPStorages/com.hakanserce.agentic-status-bar",
    "~/Library/Preferences/com.hakanserce.agentic-status-bar.plist",
  ]
end
