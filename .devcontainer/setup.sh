#!/bin/bash
# Devcontainer setup script.

set -exuo pipefail

sudo apt update
sudo apt install -y clang
sudo apt install -y lld
pip install --no-deps --require-hashes --requirement .devcontainer/requirements.txt
