cask "omnimac" do
  version "0.5.2"
  sha256 "a6d222d538030acb1c1f6790824322da816460e953b87124b8ae49be2f10d9db"

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
