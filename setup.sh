#!/bin/bash

set -xe

sudo apt update -y
sudo apt upgrade -y

NVIM_VERSION="v0.10.0"
NVIM_ARCHIVE="nvim-linux64.tar.gz"

NVIM_URL="https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/${NVIM_ARCHIVE}"
INSTALL_DIR="/opt/nvim-linux64"
SYMLINK_PATH="/usr/local/bin/nvim"
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

echo "Downloading Neovim..."
wget $NVIM_URL -O $NVIM_ARCHIVE

echo "Extracting Neovim..."
tar -xzvf $NVIM_ARCHIVE 

echo "Moving Neovim to /opt..."
sudo mv nvim-linux64 $INSTALL_DIR

echo "Creating symbolic link..."
sudo ln -sf $INSTALL_DIR/bin/nvim $SYMLINK_PATH


mkdir -p "$XDG_CONFIG_HOME/nvim"

echo "Cleaning up..."
rm -rf $NVIM_ARCHIVE

echo "Verifying Neovim installation..."
nvim --version
