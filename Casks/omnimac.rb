cask "omnimac" do
  version "0.4.2"
  sha256 "04785ab8a568bec4c7989c1801cce11ca596b546f9a102a85d3bccca31a9bb1a"

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
