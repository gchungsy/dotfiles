#!/bin/bash

# Script to interactively configure SSH settings

# Function to enable SSH
enable_ssh() {
    sudo apt update
    sudo apt install -y openssh-server
    sudo systemctl enable ssh
    sudo systemctl start ssh
}

# Function to configure SSH
configure_ssh() {
    
    read -p "Allow password login? (yes/no): " allow_password_login
    if [[ $allow_password_login == "yes" ]]; then
        sudo sed -i "s/#PasswordAuthentication yes/PasswordAuthentication yes/" /etc/ssh/sshd_config
    else
        sudo sed -i "s/PasswordAuthentication yes/#PasswordAuthentication yes/" /etc/ssh/sshd_config
    fi

    sudo systemctl restart ssh
}

# Main script
echo "Welcome to system configuration!"

read -p "Enable SSH? (yes/no): " enable_ssh_choice
if [[ $enable_ssh_choice == "yes" ]]; then
    enable_ssh
    configure_ssh
    echo "SSH enabled and configured."
else
    echo "SSH configuration skipped."
fi

