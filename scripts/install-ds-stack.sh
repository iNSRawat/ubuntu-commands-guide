#!/usr/bin/env bash

# Install a basic data science stack on Ubuntu
# This script installs:
#   - Python, pip, venv
#   - Common Python DS libraries
#   - Jupyter Lab
#
# Usage:
#   chmod +x scripts/install-ds-stack.sh
#   ./scripts/install-ds-stack.sh

set -euo pipefail

echo ">> Updating package index..."
sudo apt update

echo ">> Installing system dependencies..."
sudo apt install -y \
  python3 \
  python3-pip \
  python3-venv \
  build-essential \
  git \
  wget \
  curl

echo ">> Creating Python virtual environment (.venv)..."
if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi

echo ">> Activating virtual environment..."
# shellcheck disable=SC1091
source .venv/bin/activate

echo ">> Upgrading pip..."
pip install --upgrade pip

echo ">> Installing Python data science packages..."
pip install \
  numpy \
  pandas \
  scipy \
  scikit-learn \
  matplotlib \
  seaborn \
  jupyterlab \
  notebook \
  ipykernel

echo ">> Registering virtualenv as Jupyter kernel..."
python -m ipykernel install --user --name "ubuntu-ds" --display-name "Ubuntu DS Env"

echo ">> Done!"
echo "To start Jupyter Lab, run:"
echo "  source .venv/bin/activate"
echo "  jupyter lab"
