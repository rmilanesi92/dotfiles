#!/bin/bash

# Install ZSH
sudo apt update && sudo apt install zsh

# Make ZSH the default shell
chsh -s $(which zsh)

echo "To enable ZSH by default you will need a reboot"
