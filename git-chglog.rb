require "formula"

REPOSITORY_URL='https://github.com/git-chglog/git-chglog'
HOMEBREW_GIT_VERSION='0.6.0'

class GitChglog < Formula
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_GIT_VERSION}/git-chglog_darwin_amd64"
  sha256 "fd7dd1b0c94129583e143233ea4a6a12fdd80ca1551f58f2901bab7ef281419b"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "git-chglog_darwin_amd64", "git-chglog"
    bin.install "git-chglog"
  end
end
