#!/bin/sh

go test -v && go build -ldflags="-s -w" -o "$(basename $PWD)-${GOOS}-${GOARCH}" && upx --ultra-brute "$(basename $PWD)-${GOOS}-${GOARCH}"

