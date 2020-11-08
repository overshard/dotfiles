#!/bin/bash


# Make dirs and clone dot-files repo

mkdir -p ~/code/overshard
cd ~/code/overshard
git clone https://github.com/overshard/dot-files.git
cd ~


# Symlink all configuration files

# git
ln -s ~/code/overshard/dot-files/git/gitconfig .gitconfig

# nvim
mkdir -p ~/.config/nvim
ln -s ~/code/overshard/dot-files/nvim/init.vim .config/nvim/init.vim

# bash
ln -s ~/code/overshard/dot-files/bash/bash_aliases .bash_aliases
