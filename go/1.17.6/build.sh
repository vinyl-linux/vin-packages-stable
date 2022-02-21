#!/bin/sh -e

export GOROOT_FINAL=/usr/lib/go
export GO_LDFLAGS=-buildmode=pie

cd src
./make.bash
