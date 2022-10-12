#!/bin/bash

(
  mkdir -p build
  cd build
  mkdir -p release
  cd release
  cmake -DCMAKE_BUILD_TYPE=Release \
  -Wno-deprecated -DBUILD_EXAMPLES=0 ../..
)
#!/bin/bash
(
  # utilizing cmake's parallel build options
  # recommended: -j <number of processor cores + 1>
  # This is supported in cmake >= 3.12 use -- -j5 for older versions
  /alloshare/cmake-3.15.3-Linux-x86_64/bin/cmake --build build/release -j5
)
# # Configure debug build
# (
#   mkdir -p build
#   cd build
#   mkdir -p debug
#   cd debug
#   cmake -DCMAKE_BUILD_TYPE=Debug \
#   -D CMAKE_PREFIX_PATH=/home/ben/Desktop/2021/cate_torch/libtorch/share/cmake/Torch \
#   -D CREATE_SCRIPTMODULES=ON \
#   -Wno-deprecated -DBUILD_EXAMPLES=0 ../..
# )

