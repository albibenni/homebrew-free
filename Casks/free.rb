cask "free" do
  version "1.1.0"
  sha256 "d937dfd8954e3064a59db388cb586523098fe7a464e4c468bd293c2832892627"

  url "https://github.com/albibenni/free/releases/download/v#{version}/Free.dmg"
  name "Free"
  desc "Focus blocker with strict allowlist enforcement"
  homepage "https://github.com/albibenni/free"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Free.app"

  zap trash: [
    "~/Library/Caches/com.benni.Free",
    "~/Library/Preferences/com.benni.Free.plist",
    "~/Library/Saved Application State/com.benni.Free.savedState",
  ]
end
