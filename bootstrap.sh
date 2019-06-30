#!/bin/bash
# Get all the dot files in place quickly, this can be quickly run via:
# `curl https://raw.githubusercontent.com/overshard/dot-files/master/bootstrap.sh | sh`


# WARNING: Don't run commands via curl sh unless you know what you are doing and where
# the code is coming from.


# Check if brew exists to support macOS, if it does install git via brew, else install
# via apt for Ubuntu
if [ -x "$(command -v brew)" ]
then
    brew install git
else
    sudo apt install git
fi


# Make dirs and clone dot-files repo
mkdir -p ~/code/isaac
cd ~/code/isaac
git clone https://github.com/overshard/dot-files.git
cd ~


# Symlink all configuration files

# git
ln -s ~/code/isaac/dot-files/git/gitconfig .gitconfig

# nvim
mkdir -p .config
ln -s ~/code/isaac/dot-files/nvim .config/nvim

# bash
ln -s ~/code/isaac/dot-files/bash/bash_aliases .bash_aliases
ln -s ~/code/isaac/dot-files/bash/bash_profile .bash_profile
