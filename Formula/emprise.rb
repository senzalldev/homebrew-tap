# typed: false
# frozen_string_literal: true

# emprise — AI partner for your terminal. https://emprise.dev
# Updated automatically by the release pipeline in senzalldev/emprise
# (update-tap job). Manual edits will be overwritten on release.
class Emprise < Formula
  desc "AI partner for your terminal — any model, your machine, your data"
  homepage "https://emprise.dev"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/senzalldev/emprise-app/releases/download/0.8.1/emprise-darwin-arm64"
      sha256 "82f52a2735b9330ba05c0c9c927fec77f440e91b287591604186a7bb87986086"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/senzalldev/emprise-app/releases/download/0.8.1/emprise-linux-amd64"
      sha256 "fc9e4e1f6a0fd9f7523620908d176e2abb5cd0cda7cbee533fa1bca4cf0a7e7f"
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
