# typed: false
# frozen_string_literal: true

# emprise — AI partner for your terminal. https://emprise.dev
# Updated automatically by the release pipeline in senzalldev/emprise
# (update-tap job). Manual edits will be overwritten on release.
class Emprise < Formula
  desc "AI partner for your terminal — any model, your machine, your data"
  homepage "https://emprise.dev"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/senzalldev/emprise-app/releases/download/0.9.0/emprise-darwin-arm64"
      sha256 "86203e4964e5afb902684370d6a6601d4d4041ad30b7d0d2c33b8d257bd9a750"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/senzalldev/emprise-app/releases/download/0.9.0/emprise-linux-amd64"
      sha256 "a09e88212ae5d8f85bb99a920f91d4235caf39fd95560c58140da91c6fede390"
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
