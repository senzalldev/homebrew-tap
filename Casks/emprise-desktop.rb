# Updated automatically by the release pipeline (update-tap job).
cask "emprise-desktop" do
  version "0.8.0"
  sha256 "cf683da0c212a289befb7a0940082e460cf3f8c94e77237dbe8f8b5389cd14b9"

  url "https://github.com/senzalldev/emprise-app/releases/download/#{version}/emprise-desktop-macos.dmg"
  name "Emprise Desktop"
  desc "Desktop app for emprise — AI partner on your terms"
  homepage "https://emprise.dev"

  app "Emprise Desktop.app"
end
