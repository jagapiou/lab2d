#!/bin/bash
set -euxo pipefail

CC=clang CXX=clang++ \
bazel --bazelrc=.bazelrc test --config=luajit --linkopt=-fuse-ld=lld  --test_output=errors //...
echo "SUCCESS"
