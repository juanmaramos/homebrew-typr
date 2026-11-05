cask "typr-oss" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "41e6fc10f9d75c62d6e76ffd16378b2991188addee01611bf5a66842ef568dd2",
         intel: "157e88cab805b8370861063720040505a7af96af1f10c652f89b72e3f7746b18"

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
