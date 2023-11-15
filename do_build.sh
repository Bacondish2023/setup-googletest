#!/bin/bash
#
# @file do_build.sh
# @brief Creates build directory, runs cmake and builds
#

BUILD_DIR=zzz_build

if [ -d "$BUILD_DIR" ]; then
  echo "$BUILD_DIR" directory already exists. skip creation.
else
  mkdir $BUILD_DIR

  # run cmake
  pushd $BUILD_DIR
  cmake -DCMAKE_BUILD_TYPE="Release" -G "Unix Makefiles" ..
  popd
fi

# build
pushd $BUILD_DIR
make
popd
