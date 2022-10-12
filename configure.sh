#!/bin/bash

(
  mkdir -p build
  cd build
  mkdir -p release
  cd release
  /alloshare/cmake-3.15.3-Linux-x86_64/bin/cmake -DCMAKE_BUILD_TYPE=Release -Wno-deprecated -DBUILD_EXAMPLES=0 ../..
)

# Configure debug build
#(
#  mkdir -p build
#  cd build
#  mkdir -p debug
#  cd debug
#  cmake -DCMAKE_BUILD_TYPE=Debug -Wno-deprecated -DBUILD_EXAMPLES=0 ../..
#)

