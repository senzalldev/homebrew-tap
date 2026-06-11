# typed: false
# frozen_string_literal: true

# emprise — AI partner for your terminal. https://emprise.dev
# Updated automatically by the release pipeline in senzalldev/emprise
# (update-tap job). Manual edits will be overwritten on release.
class Emprise < Formula
  desc "AI partner for your terminal — any model, your machine, your data"
  homepage "https://emprise.dev"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/senzalldev/emprise-app/releases/download/0.7.0/emprise-darwin-arm64"
      sha256 "bdce764d1f7c6fd3f3658389680239862944818b5a2ce02cb9f6bf37c1254610"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/senzalldev/emprise-app/releases/download/0.7.0/emprise-linux-amd64"
      sha256 "ebf9fe52b262372f2a2637d5f5507fa9c5fc71f93a61f32967ae492b178e9a09"
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
