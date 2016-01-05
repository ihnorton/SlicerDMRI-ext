#!/bin/bash
mkdir TestExt-build
cd TestExt-build

export SLICER_SRC=~/git/slcr/s4
export SLICER_BUILD=~/git/slcr/s4nj/Slicer-build
export GENERATOR="-GNinja"
export MAKE="ninja -j3"

cmake $GENERATOR \
      -DCMAKE_OSX_DEPLOYMENT_TARGET=10.9 \
      -DSlicer_DIR:PATH=$SLICER_BUILD \
      -DSlicer_EXTENSION_DESCRIPTION_DIR:PATH=../TestExt \
      -DCMAKE_BUILD_TYPE:STRING=Release \
      ${SLICER_SRC}/Extensions/CMake

$MAKE
