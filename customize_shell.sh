#!/bin/bash
# Customize shell settings

echo "Customizing shell..."
if ! grep -q "source ~/dotfiles/bashrc_custom" ~/.bashrc; then
    echo "source ~/dotfiles/bashrc_custom" >> ~/.bashrc
fi

# Source the updated .bashrc
source ~/.bashrc

