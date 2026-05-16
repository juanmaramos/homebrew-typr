cask "typr-oss" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.12"
  sha256 arm:   "4622ec4f408d707a395c75b5565bde448eef7f355cdcad569a65df9c3ba8d2e5",
         intel: "03d44cc6b9b4af3a361e36c65ba206eb8734b71fbf3abb1869e8048eb17bc358"

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
