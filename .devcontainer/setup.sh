#!/bin/bash
# Devcontainer setup script.

set -exuo pipefail

sudo apt update
sudo apt install -y build-essential clang lld
pip install --no-deps --require-hashes --requirement .devcontainer/requirements.txt
