cask "pouncesql" do
  version "0.1.6"
  sha256 "0165c8a6f7ec9bc2f9f3a95e1de9afed612b6f36a054baa2fe0b742246a2898a"

  url "https://github.com/senzalldev/pouncesql-app/releases/download/v#{version}/PounceSQL-#{version}.dmg"
  name "PounceSQL"
  desc "Native macOS SQL client for Azure SQL, SQL Server, PostgreSQL & SQLite with AI + MCP"
  homepage "https://pouncesql.com"

  auto_updates false
  depends_on macos: :ventura

  app "PounceSQL.app"

  zap trash: [
    "~/Library/Application Support/PounceSQL",
    "~/Library/Preferences/dev.senzall.pouncesql.plist",
  ]
end
