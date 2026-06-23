cask "tempo" do
  version "0.1.1"
  sha256 "0184734bcc46f8e0f6a9ebe5beccfb9bc4cff8e5727282433a67a94b133f5cd7"

  url "https://github.com/nikitaclicks/tempo/releases/download/v#{version}/Tempo-v#{version}.zip"
  name "Tempo"
  desc "Local-only macOS activity tracker with timeline, insights, and optional AI"
  homepage "https://github.com/nikitaclicks/tempo"

  depends_on macos: ">= :big_sur" # macOS 11+, matches minimumSystemVersion

  app "Tempo.app"

  # Not notarized: the bundle is signed with a stable self-signed certificate,
  # so strip the quarantine flag on install so the app launches without a
  # Gatekeeper "unidentified developer" block.
  postflight do
    system "xattr", "-dr", "com.apple.quarantine", "#{appdir}/Tempo.app"
  end

  uninstall quit:   "com.tempo.app",
            launchctl: "com.tempo.daemon"

  # Tempo records activity into a local SQLite database and installs a per-user
  # LaunchAgent for the collector daemon. Clean both up on `brew uninstall --zap`.
  zap trash: [
    "~/Library/Application Support/Tempo",
    "~/Library/LaunchAgents/com.tempo.daemon.plist",
  ]
end
