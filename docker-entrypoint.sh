#!/bin/sh

S_GOOS=${GOOS}
S_GOARCH=${GOARCH}
unset GOOS
unset GOARCH

go test -v && GOARCH=${S_GOARCH} GOOS=${S_GOOS} go build -ldflags="-s -w" -o "$(basename $PWD)-${S_GOOS}-${S_GOARCH}" && upx --ultra-brute "$(basename $PWD)-${S_GOOS}-${S_GOARCH}"

