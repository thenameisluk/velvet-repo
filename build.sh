#!/bin/bash
cd "$(dirname "$0")"

rm -rf build
mkdir build

tree > build/index.html

#build packages and more to output
./source/build-all