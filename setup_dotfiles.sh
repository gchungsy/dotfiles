#!/bin/bash

# Clone the dotfiles repository
if [ ! -d "~/dotfiles" ]; then
    echo "Cloning dotfile repository..."
    git clone https://github.com/gchungsy/dotfiles.git ~/dotfiles
fi

# Make each script exectuable
chmod +x install_packages.sh customize_shell.sh

# Run individual setup scripts
./install_packages.sh
./customize_shell.sh
