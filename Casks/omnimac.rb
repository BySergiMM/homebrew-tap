cask "omnimac" do
  version "0.4.0"
  sha256 "f9466e9e91dd63a4d0df6a5c62f21f9ca0c35ddf77be092439cc7c07a427f8f4"

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
