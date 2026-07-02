cask "pouncesql" do
  version "0.1.5"
  sha256 "937bef8eaaee959c6bb99b7f2534b8f8ebef89776e42c3e0f504554dcd24c704"

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
