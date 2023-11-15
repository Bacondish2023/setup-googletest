#!/bin/bash
#
# @file do_clean.sh
# @brief Removes deliverables and temporaries
#

BUILD_DIR=zzz_build

if [ -d "$BUILD_DIR" ]; then
  rm -r -f $BUILD_DIR
fi
