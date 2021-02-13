#!/bin/sh
#
# The following largely comes from the package() stage of https://git.alpinelinux.org/aports/tree/community/go/APKBUILD
# with some minor changes (replacing $pkgdir with $PREFIX for example

set -axe

mkdir -p "${PREFIX}"/usr/bin "${PREFIX}"/usr/lib/go/bin "${PREFIX}"/usr/share/doc/go

for binary in go gofmt; do
    install -Dm755 bin/"$binary" "${PREFIX}"/usr/lib/go/bin/"$binary"
    ln -s /usr/lib/go/bin/"$binary" "${PREFIX}"/usr/bin/
done

cp -a pkg lib "${PREFIX}"/usr/lib/go
cp -r doc misc "${PREFIX}"/usr/share/doc/go
rm -rf "${PREFIX}"/usr/lib/go/pkg/obj
rm -rf "${PREFIX}"/usr/lib/go/pkg/bootstrap
rm -f  "${PREFIX}"/usr/lib/go/pkg/tool/*/api

mkdir -p "${PREFIX}"/usr/lib/go/
cp -a ./src "${PREFIX}"/usr/lib/go

# Remove tests from /usr/lib/go/src to reduce package size,
# these should not be needed at run-time by any program.
find "${PREFIX}"/usr/lib/go/src \( -type f -a -name "*_test.go" \) \
     -exec rm -rf \{\} \+
find "${PREFIX}"/usr/lib/go/src \( -type d -a -name "testdata" \) \
     -exec rm -rf \{\} \+

# Remove rc (plan 9) and bat scripts (windows) to reduce package
# size further. The bash scripts are actually needed at run-time.
#
# See: https://gitlab.alpinelinux.org/alpine/aports/issues/11091
find "${PREFIX}"/usr/lib/go/src -type f -a \( -name "*.rc" -o -name "*.bat" \) \
     -exec rm -rf \{\} \+
