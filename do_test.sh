#!/bin/bash
#
# @file do_test.sh
# @brief Runs tests
#

BUILD_DIR=zzz_build

if [ -d "$BUILD_DIR" ]; then
  pushd $BUILD_DIR
  make test
  popd
else
  echo "$BUILD_DIR" directory does not exist. skip test.
fi
