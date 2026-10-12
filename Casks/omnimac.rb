cask "omnimac" do
  version "0.5.9"
  sha256 "14ae7aa4ac691d9366a2f92b0ab792fa6fd0ba76ce4dce7985f289ec662f2e29"

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
