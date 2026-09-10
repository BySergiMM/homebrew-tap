cask "omnimac" do
  version "0.5.1"
  sha256 "561b5d51fb3fa9fad9d9045872c90f7c05194a02cc2a9bbd696c432cee2b4dd8"

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
