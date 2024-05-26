#!/bin/bash

# Clone the dotfiles repository
if [ ! -d "~/dotfiles" ]; then
    echo "Cloning dotfile repository..."
    git clone https://github.com/gchungsy/dotfiles.git ~/dotfiles
fi

# Make each script exectuable
chmod +x install_packages.sh customize_shell.sh
chmod +x *.sh
chmod +x scripts/*

# Run individual setup scripts
./install_packages.sh
./customize_shell.sh
./setup_links.sh

# Make common directories
mkdir -p ~/projects
mkdir -p ~/bin


