require "formula"

REPOSITORY_URL='https://github.com/git-chglog/git-chglog'
HOMEBREW_GIT_VERSION='0.5.0'

class GitChglog < Formula
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_GIT_VERSION}/git-chglog_darwin_amd64"
  sha256 "617656e140456000a70d6e8db322e711b8da1040dff94df99f23a64273f330c7"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "git-chglog_darwin_amd64", "git-chglog"
    bin.install "git-chglog"
  end
end
