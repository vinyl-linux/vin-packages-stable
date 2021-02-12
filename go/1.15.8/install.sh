#!/bin/sh

set -axe

install -v -m 0755 bin/* ${PREFIX}/usr/bin

find . -type f -name '*_test.go' -exec rm {} \;

for D in api bin doc lib misc; do
    find $D -type d -exec install -v -d {} ${PREFIX}/usr/share/go/$D/{} \;
    find $D -type f -exec install -v {} ${PREFIX}/usr/share/go/$D/{} \;
done
