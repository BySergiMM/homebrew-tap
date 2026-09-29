cask "omnimac" do
  version "0.5.4"
  sha256 "d600b61e4bce9e926fd4c3d9ea287e783687eeecea67bdfd38cc4ebcdfbae6f5"

  url "https://github.com/BySergiMM/OmniMac/releases/download/v#{version}/OmniMac-#{version}.zip"
  name "OmniMac"
  desc "Eleven Mac utilities in one menu bar app, with a Dynamic Island for any Mac"
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
