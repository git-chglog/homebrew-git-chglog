require "formula"

class GitChglog < Formula
  homepage "https://github.com/git-chglog/git-chglog"
  url "https://github.com/git-chglog/git-chglog/releases/download/0.0.1/git-chglog_darwin_amd64"
  sha256 "6b53df62ff4e590961f75520c8a58d4e62c3220971bdd622952e4cdc9a918a20"
  head "https://github.com/git-chglog/git-chglog.git"
  version "0.0.1"

  def install
    system "mv", "git-chglog_darwin_amd64", "git-chglog"
    bin.install "git-chglog"
  end
end
