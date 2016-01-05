#!/bin/bash
mkdir TestExt-build
cd TestExt-build

export SLICER_DIR=~/git/slcr/s4
export GENERATOR="-GNinja"
export MAKE="ninja -j3"

cmake $GENERATOR \
        -DCMAKE_OSX_DEPLOYMENT_TARGET=10.9 \
        -DSlicer_DIR:PATH=$SLICER_DIR \
        -DSlicer_EXTENSION_DESCRIPTION_DIR:PATH=./ \
        -DCMAKE_BUILD_TYPE:STRING=Release \
        ${SLICER}/Extensions/CMake

$MAKE
