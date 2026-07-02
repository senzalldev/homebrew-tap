cask "pouncesql" do
  version "0.2.2"
  sha256 "4a17786b09450c5ad60208c7eab341ee55c754e5d25e5dd5240cc94be34e01d9"

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
