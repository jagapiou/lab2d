#!/bin/bash
set -euxo pipefail

WHEEL_NAME="$(ls bazel-bin/dmlab2d/dmlab2d-*-cp*.whl)"

python -m venv venv
source venv/bin/activate
pip install "${WHEEL_NAME}"

python -I - << '____HERE'
import dmlab2d
import dmlab2d.runfiles_helper

lab = dmlab2d.Lab2d(dmlab2d.runfiles_helper.find(), {"levelName": "chase_eat"})
env = dmlab2d.Environment(lab, ["WORLD.RGB"])
env.step({})
____HERE

echo 'SUCCESS'
