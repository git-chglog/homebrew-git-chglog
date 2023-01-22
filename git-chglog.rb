# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitChglog < Formula
  desc "CHANGELOG generator implemented in Go (Golang)."
  homepage "https://godoc.org/github.com/git-chglog/git-chglog"
  version "0.15.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/git-chglog/git-chglog/releases/download/v0.15.2/git-chglog_0.15.2_darwin_amd64.tar.gz"
      sha256 "95655780b2a80d31cdf44f2897c48264b292f990fb60365558a3fff4d4e5945f"

      def install
        bin.install "git-chglog"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/git-chglog/git-chglog/releases/download/v0.15.2/git-chglog_0.15.2_darwin_arm64.tar.gz"
      sha256 "7b2ff2d1b6a1e467250ee2d75f163d25631fd92024d34098d10be9ac4a1f39e4"

      def install
        bin.install "git-chglog"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/git-chglog/git-chglog/releases/download/v0.15.2/git-chglog_0.15.2_linux_armv6.tar.gz"
      sha256 "864f08f086bedf1ce7738805753aa648637c79843138d9fb4a18214710f0a59f"

      def install
        bin.install "git-chglog"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/git-chglog/git-chglog/releases/download/v0.15.2/git-chglog_0.15.2_linux_amd64.tar.gz"
      sha256 "e556946fa1244282056ecb5c8968dc5e8d91fe5fcbc0813c2bf91a80f8bfb5f9"

      def install
        bin.install "git-chglog"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/git-chglog/git-chglog/releases/download/v0.15.2/git-chglog_0.15.2_linux_arm64.tar.gz"
      sha256 "9c8d91dfbbabf97ee893bbe64dcfc002a6673e4187289b6e5d17e72f56636e8d"

      def install
        bin.install "git-chglog"
      end
    end
  end

  test do
    system "#{bin}/git-chglog --help"
  end
end
