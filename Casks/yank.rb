cask "yank" do
  version "1.4.1"
  sha256 "51666574b1762491bf58c973d907b1b08ba868d1358d699f5f00bb24d229fa76"

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
