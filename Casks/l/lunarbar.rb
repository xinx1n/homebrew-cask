cask "lunarbar" do
  arch arm: "-apple-silicon", intel: ""

  version "1.8.3"
  
  sha256 arm:   "b3724e705027349b4ace0c38ce050c4361b4f908f224a2947d2db563e67cabbd",
         intel: "18915b2881ffeff766f9708076101f5b15629d2ab42ddc0ef9a6494de6332f11"

  url "https://github.com/LunarBar-app/LunarBar/releases/download/v#{version}/LunarBar-#{version}#{arch}.dmg"
  
  name "LunarBar"
  desc "Lunar calendar for menu bar"
  homepage "https://github.com/LunarBar-app/LunarBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "LunarBar.app"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.lunarbar",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.lunarbar.sfl*",
    "~/Library/Containers/app.cyan.lunarbar",
    "~/Library/Saved Application State/app.cyan.lunarbar.savedState",
  ]
end
