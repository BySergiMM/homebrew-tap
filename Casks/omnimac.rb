cask "omnimac" do
  version "0.3.1"
  sha256 "555873e30d1cd3ef58dc97fd6abb29fd2dacdda399e0175d4b7beaa9709d6ed6"

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
