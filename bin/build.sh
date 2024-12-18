#!/bin/bash
set -euxo pipefail

CC=clang CXX=clang++ \
bazel --bazelrc=.bazelrc build --config=luajit --linkopt=-fuse-ld=lld //...
echo "SUCCESS"
