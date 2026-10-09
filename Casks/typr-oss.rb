cask "typr-oss" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "9f19118d6005cf3d81e111b4c4406246321d433bd3851256057826f25fd83008",
         intel: "be26b697ffc001d4836a4e1c146ea43c1dd4cf160758c9e81828c47d4993712d"

  url "https://github.com/juanmaramos/typr-oss/releases/download/v#{version}/Typr.OSS_#{version}_#{arch}.dmg"
  name "Typr OSS"
  desc "AI notepad for meetings, notes, and follow-up work"
  homepage "https://github.com/juanmaramos/typr-oss"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "typr"

  app "Typr OSS.app"

  zap trash: [
    "~/Library/Application Support/com.typr.oss",
    "~/Library/Caches/com.typr.oss",
    "~/Library/Logs/com.typr.oss",
    "~/Library/Preferences/com.typr.oss.plist",
    "~/Library/Saved Application State/com.typr.oss.savedState",
  ]
end
