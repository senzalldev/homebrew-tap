cask "pouncesql" do
  version "0.2.3"
  sha256 "b9e39f1ce7249b326da12af76534c89f79f4d050ecf40afebdeca45a9a48fa5f"

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
