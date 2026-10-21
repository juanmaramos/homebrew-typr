cask "typr-oss" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.15"
  sha256 arm:   "80c82321feca619e5f28f30cefc651c2c5d2ce219a8fd074db2cb1b4134fdbb0",
         intel: "4de79fc50e8288230e55150a360d7062fadd559b63143e79f63c248d6dda5701"

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
