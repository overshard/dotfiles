#!/bin/bash


# Make

cd ~; git clone https://github.com/overshard/dotfiles .dotfiles


# Symlink all configuration files

# git
ln -s ~/.dotfiles/git/gitconfig .gitconfig

# nvim
mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/nvim/init.vim .config/nvim/init.vim

# bash
ln -s ~/.dotfiles/bash/bash_aliases .bash_aliases
echo "source ~/.bash_aliases" >> ~/.bashrc

# vscode
mkdir -p ~/.vscode-server/data/Machine
ln -s ~/.dotfiles/settings.json ~/.vscode-server/data/Machine/settings.json
