#!/bin/bash

cd $(readlink -f "$(dirname "$0")")
set -ex

g++ -O3 bench.cpp -o bench -std=c++14 -fopenmp -ltbb -I/usr/include/tbb
./bench
