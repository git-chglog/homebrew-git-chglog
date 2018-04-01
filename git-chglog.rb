require "formula"

REPOSITORY_URL='https://github.com/git-chglog/git-chglog'
HOMEBREW_GIT_VERSION='0.3.2'

class GitChglog < Formula
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_GIT_VERSION}/git-chglog_darwin_amd64"
  sha256 "c4d59c950d3be81cce7bff4bc99eb9f3540b4daf4c1f2dcd209dc08956d2c97c"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "git-chglog_darwin_amd64", "git-chglog"
    bin.install "git-chglog"
  end
end
