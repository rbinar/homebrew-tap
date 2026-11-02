cask "mac-powertoys" do
  version "2.2.0"
  sha256 "5c9d8e0710cafd613581e68192a3414645c718a80c97f5aca02934f4cd943a7c"

  url "https://github.com/rbinar/mac-powertoys/releases/download/v#{version}/MacPowerToys-v#{version}.dmg"
  name "Mac PowerToys"
  desc "Menu bar utilities inspired by Microsoft PowerToys"
  homepage "https://github.com/rbinar/mac-powertoys"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "MacPowerToys.app"

  zap trash: [
    "~/Library/Application Scripts/com.rbinar.MacPowerToys",
    "~/Library/Caches/com.rbinar.MacPowerToys",
    "~/Library/Preferences/com.rbinar.MacPowerToys.plist",
  ]
end
