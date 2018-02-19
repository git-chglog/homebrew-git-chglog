#!/bin/bash

REPOSITORY=`grep "REPOSITORY_URL=" git-chglog.rb | sed -E "s/.*'(.+)'$/\1/"`
VERSION=`grep "GIT_VERSION=" git-chglog.rb | sed -E "s/.*'(.+)'$/\1/"`

curl -L -O $REPOSITORY/releases/download/$VERSION/git-chglog_darwin_amd64 > /dev/null
openssl dgst -sha256 git-chglog_darwin_amd64
rm -rf git-chglog_darwin_amd64
