cask "typr-oss" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.14"
  sha256 arm:   "36f0a87da3bf2b83d1c276fe89355e50058f9f24259e78ddbd1c9c9178aee0f3",
         intel: "594f60ce3977d4a7ee3229ac1e3dff69725cfebeff55dad75bbac7260a6bcf4f"

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
