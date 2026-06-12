# typed: false
# frozen_string_literal: true

# emprise — AI partner for your terminal. https://emprise.dev
# Updated automatically by the release pipeline in senzalldev/emprise
# (update-tap job). Manual edits will be overwritten on release.
class Emprise < Formula
  desc "AI partner for your terminal — any model, your machine, your data"
  homepage "https://emprise.dev"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/senzalldev/emprise-app/releases/download/0.8.0/emprise-darwin-arm64"
      sha256 "bbaf84859e57fe93d25a4ec94dcffadb2c3e26f47e3bab543941ec6dcf526b08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/senzalldev/emprise-app/releases/download/0.8.0/emprise-linux-amd64"
      sha256 "538856b3dabcc11582913bcc7c0813caab61096c99d4e5d56b237bfa48815032"
    end
  end

  def install
    binary = Dir["emprise-*"].first
    bin.install binary => "emprise"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emprise --version")
  end
end
