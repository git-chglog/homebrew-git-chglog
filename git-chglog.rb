require "formula"

REPOSITORY_URL='https://github.com/git-chglog/git-chglog'
HOMEBREW_GIT_VERSION='0.9.1'

class GitChglog < Formula
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_GIT_VERSION}/git-chglog_darwin_amd64"
  sha256 "2023d82b5b505cf8ac4db20f096f439650554e80eb509fe080f5e81b6b477d3c"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "git-chglog_darwin_amd64", "git-chglog"
    bin.install "git-chglog"
  end
end
