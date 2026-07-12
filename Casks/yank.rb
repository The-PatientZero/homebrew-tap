cask "yank" do
  version "1.0.1"
  sha256 "c19290402f1fa8cf7263d197b455a23dc0d433e32ca0ffad78f15b3ab902b007"

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
