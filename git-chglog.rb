class GitChglog < Formula
  desc "CHANGELOG generator implemented in Go"
  homepage "https://github.com/git-chglog/git-chglog"
  version "0.9.1"
  url "#{homepage}/releases/download/#{version}/git-chglog_darwin_amd64"
  sha256 "2023d82b5b505cf8ac4db20f096f439650554e80eb509fe080f5e81b6b477d3c"

  def install
    mv "git-chglog_darwin_amd64", "git-chglog"
    bin.install "git-chglog"
  end

  test do
    system "#{bin}/git-chglog", "--help"
  end
end
