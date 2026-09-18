cask "omnimac" do
  version "0.5.3"
  sha256 "c683d9eec5b1ed6a043e870b98a53e227159e204e187973c8114f9eb3fa73f86"

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
