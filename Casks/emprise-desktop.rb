# Updated automatically by the release pipeline (update-tap job).
cask "emprise-desktop" do
  version "0.8.1"
  sha256 "2c093e62e5c7d2f9980d1ba8e6412ae808a602ac047d142360c1a3aa27f2e8ce"

  url "https://github.com/senzalldev/emprise-app/releases/download/#{version}/emprise-desktop-macos.dmg"
  name "Emprise Desktop"
  desc "Desktop app for emprise — AI partner on your terms"
  homepage "https://emprise.dev"

  app "Emprise Desktop.app"
end
