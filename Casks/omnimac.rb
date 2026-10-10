cask "omnimac" do
  version "0.5.6"
  sha256 "52ccdf7d2c243b6ca4ea6e835a46d06a3b6ddc2ef7378f9e98d092df106cb203"

  url "https://github.com/BySergiMM/OmniMac/releases/download/v#{version}/OmniMac-#{version}.zip"
  name "OmniMac"
  desc "Eleven utilities in one menu bar app, with a Dynamic Island for any screen"
  homepage "https://bysergimm.github.io/OmniMac/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "OmniMac.app"

  uninstall quit:   "com.seergiii.omnimac",
            delete: "/etc/sudoers.d/omnimac-lid"

  zap trash: [
    "~/Library/Application Support/OmniMac",
    "~/Library/Caches/com.seergiii.omnimac",
    "~/Library/HTTPStorages/com.seergiii.omnimac",
    "~/Library/Preferences/com.seergiii.omnimac.plist",
  ]
end
