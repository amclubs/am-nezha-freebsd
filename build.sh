#!/bin/bash

appName="nezha"
builtAt="$(date +'%F %T %z')"
version=$(git describe --long --tags --dirty --always)

ldflags="\
-w -s \
--extldflags '-static -fpic' \
-X 'github.com/naiba/nezha/service/singleton.Version=$version' \
"

go build -ldflags="$ldflags" -tags=jsoniter .
