#!/bin/sh

go build -ldflags="-s -w" -o "$(basename $PWD)-${GOOS}-${GOARCH}" && upx --ultra-brute "$(basename $PWD)-${GOOS}-${GOARCH}"

