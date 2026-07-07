cask "free" do
  version "1.0.0"
  sha256 "b59a2e707bafd95228410fea014ed2e3a0504b4a59274493a19503dde4966505"

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
