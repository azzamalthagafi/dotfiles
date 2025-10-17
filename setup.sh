#!/bin/bash

# Create directories if they don't exist
mkdir -p ~/.config/nvim
mkdir -p ~/.local/bin

# Link nvim config files
ln -Fs "$PWD/config/nvim/" ~/.config/nvim/

# Link .tmux.conf
ln -s "$PWD/tmux/.tmux.conf" ~/.tmux.conf

echo "Dotfiles linked successfully!"
