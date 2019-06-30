#!/bin/bash
# A quick setup script for Ubuntu

# System installs
sudo apt-get update
sudo apt-get install git neovim postgresql redis

# Development installs
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/nvm-sh/nvm.git ~/.nvm
