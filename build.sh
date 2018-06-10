#!/bin/bash
echo "Clustering ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
