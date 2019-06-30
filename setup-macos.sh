#!/bin/bash
# A quick setup script for MacOS


# Homebrew install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# System installs
brew install git neovim postgresl redis
brew services start postgresql
brew services start redis


# Compiler installs
brew install libpq mysql-client


# Development installs
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/nvm-sh/nvm.git ~/.nvm
