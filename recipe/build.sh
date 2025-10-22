#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/libtool/build-aux/config.* .

# Build libnghttp2 only. This is a short hand for --disable-app --disable-examples --disable-hpack-tools
./configure --prefix=${PREFIX} --enable-python-bindings=no --enable-lib-only

make -j${CPU_COUNT} ${VERBOSE_AT}
make check