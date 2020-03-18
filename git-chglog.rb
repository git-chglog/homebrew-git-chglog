class GitChglog < Formula
  desc "CHANGELOG generator implemented in Go"
  homepage "https://github.com/git-chglog/git-chglog"
  version "0.9.1"
  if OS.mac?
    url "#{homepage}/releases/download/#{version}/git-chglog_darwin_amd64"
    sha256 "2023d82b5b505cf8ac4db20f096f439650554e80eb509fe080f5e81b6b477d3c"
  else
    url "#{homepage}/releases/download/#{version}/git-chglog_linux_amd64"
    sha256 "dca7d683a45cf4f0a871735d9981de4e787ef86b82282e8adc813b8738d2c531"
  end

  def install
    mv OS.mac? ? "git-chglog_darwin_amd64" : "git-chglog_linux_amd64", "git-chglog"
    bin.install "git-chglog"
  end

  test do
    system "#{bin}/git-chglog", "--help"
  end
end
