cask "omnimac" do
  version "0.4.1"
  sha256 "0425a7bc5cf61e60a38629015902877b93df13f29814093b39458e67d0a8cdf8"

  url "https://github.com/BySergiMM/OmniMac/releases/download/v#{version}/OmniMac-#{version}.zip"
  name "OmniMac"
  desc "Seven Mac utilities in one lightweight menu-bar app: keep-awake, ⌘Tab by windows, dynamic notch, window snapping, clipboard, tools and sound"
  homepage "https://bysergimm.github.io/OmniMac/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "OmniMac.app"

  zap trash: [
    "~/Library/Application Support/OmniMac",
    "~/Library/Preferences/com.seergiii.omnimac.plist",
  ]
end
