#!/bin/bash


# Make

cd ~; git clone https://github.com/overshard/dotfiles .dotfiles


# Install SpaceVim to have a full IDE via the terminal if required

curl -o- https://spacevim.org/install.sh | bash


# Symlink all configuration files

# git
ln -s ~/.dotfiles/git/gitconfig .gitconfig

# bash
ln -s ~/.dotfiles/bash/bash_aliases .bash_aliases
echo "source ~/.bash_aliases" >> ~/.bashrc

# vscode
mkdir -p ~/.vscode-server/data/Machine
ln -s ~/.dotfiles/vscode/settings.json ~/.vscode-server/data/Machine/settings.json

# spacevim
mkdir -p ~/.SpaceVim.d
ln -s ~/.dotfiles/.SpaceVim.d/init.toml ~/.SpaceVim.d/init.toml
