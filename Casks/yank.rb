cask "yank" do
  version "1.0.0"
  sha256 "beadc2dfef5ea8bd4ceacea5e565a65b51cd50d5f45148816b4d0f5eda5572ee"

  url "https://github.com/The-PatientZero/yank/releases/download/v#{version}/Yank.dmg",
      verified: "github.com/The-PatientZero/yank/"
  name "Yank"
  desc "Fast, private clipboard manager with iCloud sync"
  homepage "https://getyank.vercel.app/"

  livecheck do
    url "https://github.com/The-PatientZero/yank"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Yank.app"

  uninstall quit: "com.thepatientzero.yank"

  zap trash: [
    "~/Library/Application Support/Yank",
    "~/Library/Caches/com.thepatientzero.yank",
    "~/Library/HTTPStorages/com.thepatientzero.yank",
    "~/Library/Preferences/com.thepatientzero.yank.plist",
  ]

  caveats <<~EOS
    Yank pastes via synthetic keystrokes, which requires macOS Accessibility access:
      System Settings → Privacy & Security → Accessibility → enable Yank
  EOS
end
