cask "typr" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.11"
  sha256 arm:   "ac92484a517269db758e1aedff333c7b66907ef8b9aab6c1303ac3fd157426bd",
         intel: "36be4883a5d0ef0ef28ce23c85390048ff07459080b0b42a3a52ad90908ffa3c"

  url "https://github.com/juanmaramos/typr-oss/releases/download/v#{version}/Typr_#{version}_#{arch}.dmg",
      verified: "github.com/juanmaramos/typr-oss/"
  name "Typr OSS"
  desc "AI notepad for meetings, notes, and follow-up work"
  homepage "https://github.com/juanmaramos/typr-oss"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Typr.app"

  zap trash: [
    "~/Library/Application Support/com.typr.stable",
    "~/Library/Caches/com.typr.stable",
    "~/Library/Logs/com.typr.stable",
    "~/Library/Preferences/com.typr.stable.plist",
    "~/Library/Saved Application State/com.typr.stable.savedState",
  ]
end
