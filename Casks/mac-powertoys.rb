cask "mac-powertoys" do
  version "2.1.0"
  sha256 "cf8b2d941dadf2cc92cb5d368f956c25d93e1e3cbdd7b3e19cb84afb058dc9b8"

  url "https://github.com/rbinar/mac-powertoys/releases/download/v#{version}/MacPowerToys-v#{version}.dmg"
  name "Mac PowerToys"
  desc "Menu bar utilities inspired by Microsoft PowerToys"
  homepage "https://github.com/rbinar/mac-powertoys"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "MacPowerToys.app"

  zap trash: [
    "~/Library/Application Scripts/com.rbinar.MacPowerToys",
    "~/Library/Caches/com.rbinar.MacPowerToys",
    "~/Library/Preferences/com.rbinar.MacPowerToys.plist",
  ]
end
