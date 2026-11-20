cask "yank" do
  version "1.5.0"
  sha256 "0736fba695f1dac9e8232ba85a81bc6ff43e62103ee3619c270d2ec9eceb241a"

  url "https://github.com/koksalmehmet/yank/releases/download/v#{version}/Yank.dmg",
      verified: "github.com/koksalmehmet/yank/"
  name "Yank"
  desc "Fast, private clipboard manager with iCloud sync"
  homepage "https://getyank.vercel.app/"

  livecheck do
    url "https://github.com/koksalmehmet/yank"
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
