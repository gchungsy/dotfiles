#!/bin/bash
# Install necessary packages

echo -xe

echo "Installing packages..."
sudo apt update
sudo apt upgrade
# Text Editors and Development Tools
# Install vim: Highly configurable text editor for efficiently editing text files and writing code
sudo apt install -y vim

# Install git: Distributed version control system for tracking changes in source code during software development
sudo apt install -y git

# Networking and Web Utilities
# Install curl: Command-line tool for transferring data with URL syntax, supporting various protocols
sudo apt install -y curl

# Install wget: Command-line utility for downloading files from the web
sudo apt install -y wget

# Install net-tools: Collection of networking utilities including ifconfig, netstat, and arp
sudo apt install -y net-tools

# Miscellaneous Tools
# Install zip/unzip: Command-line utilities for compressing and decompressing ZIP archives
sudo apt install -y zip unzip

# Install tree: Utility for displaying directory trees in a visually appealing format
sudo apt install -y tree

# Install htop: Interactive process viewer and system monitor
sudo apt install -y htop

# Install tmux: Terminal multiplexer for managing multiple terminal sessions
sudo apt install -y tmux

# Install rsync: Utility for efficiently transferring and synchronizing files between directories or hosts
sudo apt install -y rsync
# Text Processing and Search Tools
# Install ripgrep (rg): Fast, efficient search tool with regex support
sudo apt install -y ripgrep

# Install bat: Cat clone with syntax highlighting and Git integration
sudo apt install -y bat

# Install fd: Simple, fast, and user-friendly alternative to `find`
sudo apt install -y fd-find

# Install exa: Modern replacement for `ls` with better output formatting
sudo apt install -y exa

# Install ack: grep-like tool optimized for programmers with a focus on searching code
sudo apt install -y ack

# Terminal Navigation and File Management
# Install fzf: Fuzzy finder for the terminal with advanced search capabilities
sudo apt install -y fzf

# Install fzy: Fast, fuzzy text selector with Vim-like keybindings
sudo apt install -y fzy

# Install ncdu: Disk usage analyzer with an interactive interface
sudo apt install -y ncdu

# Install tree: Utility for displaying directory trees in a visually appealing format
sudo apt install -y tree

# System Monitoring and Management
# Install htop: Interactive process viewer and system monitor
sudo apt install -y htop

# Install tmux: Terminal multiplexer for managing multiple terminal sessions
sudo apt install -y tmux

# Install pv: Terminal-based tool for monitoring data progress through a pipeline
sudo apt install -y pv

# Install entr: Utility for running commands when files change
sudo apt install -y entr

# JSON Processing and Web Utilities
# Install jq: Lightweight and flexible command-line JSON processor
sudo apt install -y jq

# Install curl: Command-line tool for transferring data with URL syntax
sudo apt install -y curl

# Install wget: Command-line utility for downloading files from the web
sudo apt install -y wget

# Install tldr: Simplified and community-driven man pages with practical examples
sudo apt install -y tldr

# Install mosh: Remote terminal application that allows for more reliable and responsive SSH conections
sudo apt install -y mosh
