cask "pouncesql" do
  version "0.1.4"
  sha256 "dc87976962b183e1ba964d1fb8a5e7d2aae620f024c0946c1c05e966f3ea06e3"

  url "https://github.com/senzalldev/pouncesql/releases/download/v#{version}/PounceSQL-#{version}.dmg"
  name "PounceSQL"
  desc "Native Azure SQL client for macOS with AI assistant and MCP server"
  homepage "https://github.com/senzalldev/pouncesql"

  auto_updates false

  depends_on macos: ">= :ventura"

  app "PounceSQL.app"

  caveats <<~EOS
    Before launching PounceSQL, run `az login` in a terminal to authenticate with Azure.
    Then open PounceSQL from your Applications folder.
  EOS

  zap trash: [
    "~/Library/Application Support/PounceSQL",
    "~/Library/Preferences/dev.senzall.pouncesql.plist",
  ]
end
