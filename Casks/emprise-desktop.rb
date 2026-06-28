# Updated automatically by the release pipeline (update-tap job).
cask "emprise-desktop" do
  version "0.9.0"
  sha256 "0a68813f6bace6d40b6d053bfd7298c78275af818d96cf7f44ec93062b3f52ca"

  url "https://github.com/senzalldev/emprise-app/releases/download/#{version}/emprise-desktop-macos.dmg"
  name "Emprise Desktop"
  desc "Desktop app for emprise — AI partner on your terms"
  homepage "https://emprise.dev"

  app "Emprise Desktop.app"
end
