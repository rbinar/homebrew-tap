cask "mac-powertoys" do
  version "2.3.0"
  sha256 "1586faeba854e5d3d0c9159a555a7a7be56285b9bc466893082686182558bd3a"

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
