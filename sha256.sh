#!/bin/bash

REPOSITORY=`grep "homepage" git-chglog.rb | head -1 | sed -E 's/.*"(.+)"$/\1/'`
VERSION=`grep "version" git-chglog.rb | head -1 | sed -E 's/.*"(.+)"$/\1/'`

curl -L -O $REPOSITORY/releases/download/$VERSION/git-chglog_darwin_amd64 >/dev/null
curl -L -O $REPOSITORY/releases/download/$VERSION/git-chglog_linux_amd64 >/dev/null
openssl dgst -sha256 git-chglog_darwin_amd64
openssl dgst -sha256 git-chglog_linux_amd64
rm -f git-chglog_darwin_amd64 git-chglog_linux_amd64
