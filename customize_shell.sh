#!/bin/bash
# Customize shell settings

echo "Customizing shell..."

# Prompt user to select a shell
echo "Select the shell you want to use:"
echo "1) Bash"
echo "2) Zsh"
read -p "Enter your choice (1 or 2): " shell_choice

# Check user choice and set the shell
if [ "$shell_choice" == "1" ]; then
    echo "You selected Bash."

    # Change default shell to zsh
    echo "Changing default shell to bash..."
    chsh -s $(which bash)

    if ! grep -q "source ~/dotfiles/bashrc_custom" ~/.bashrc; then
        echo "source ~/dotfiles/bashrc_custom" >> ~/.bashrc
    fi

    # Source the updated .bashrc
    source ~/.bashrc
elif [ "$shell_choice" == "2" ]; then
    echo "You selected Zsh."
    ZSHRC_FILE=~/.zshrc
     
    # Install zsh if not installed
    if ! which zsh &> /dev/null; then
        echo "Zsh is not installed. Installing zsh..."
        sudo apt update && sudo apt install -y zsh
	zsh --version
    fi
    
    if [ -f "$ZSHRC_FILE" ]; then
	echo "The .zshrc file exists."
    else
	echo "The .zshrc file does not exist."
	touch $ZSHRC_FILE
    fi

    if ! grep -q "source ~/dotfiles/bashrc_custom" ~/.zshrc; then
        echo "source ~/dotfiles/bashrc_custom" >> ~/.zshrc
    fi

    # Change default shell to zsh
    echo "Changing default shell to zsh..."
    chsh -s $(which zsh)

    # Prompt user to change prompt to Starship
    read -p "Do you want to change the prompt to Starship? (y/n): " change_prompt

    if [ "$change_prompt" == "y" ]; then
        # Install Starship if not installed
        if ! command -v starship &> /dev/null; then
            echo "Starship is not installed. Installing Starship..."
            sh -c "$(curl -fsSL https://starship.rs/install.sh)"
        fi

        # Add Starship configuration to .zshrc
        if ! grep -q 'eval "$(starship init zsh)"' ~/.zshrc; then
            echo 'eval "$(starship init zsh)"' >> ~/.zshrc
        fi
    fi
else
    echo "Invalid choice. Exiting..."
    exit 1
fi

echo "Shell customization complete. Please restart your terminal or log out and back in for changes to take effect."

