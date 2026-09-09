cask "omnimac" do
  version "0.5.0"
  sha256 "69b5457acfb9b92260e37ac362769b12837bb5066c277f26754719f32ab07ee2"

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
