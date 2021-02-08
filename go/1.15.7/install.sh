#!/bin/sh

set -axe

install -v -m 0755 bin/* ${PREFIX}/usr/bin

find . -type d -exec install -v -d {} ${PREFIX}/usr/share/{} \;
find . -type f -exec install -v {} ${PREFIX}/usr/share/{} \;
