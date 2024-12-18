#!/bin/bash
set -euxo pipefail

CC=clang CXX=clang++ \
bazel --bazelrc=.bazelrc build --compilation_mode=opt --dynamic_mode=off --config=luajit --linkopt=-fuse-ld=lld //dmlab2d:dmlab2d_wheel

WHEEL_NAME="$(ls bazel-bin/dmlab2d/dmlab2d-*-cp*.whl)"
check-wheel-contents "${WHEEL_NAME}"
echo "SUCCESS"
