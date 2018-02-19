require "formula"

REPOSITORY_URL='https://github.com/git-chglog/git-chglog'
HOMEBREW_GIT_VERSION='0.0.2'

class GitChglog < Formula
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_GIT_VERSION}/git-chglog_darwin_amd64"
  sha256 "7f92d8ca7630b0111f66735ba331a190d174cda25ebae52a1adedaf25f0d9326"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "git-chglog_darwin_amd64", "git-chglog"
    bin.install "git-chglog"
  end
end
