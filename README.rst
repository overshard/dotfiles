dot-files
=========

The various dot-files I use on my development linux server, I don't like to do
much as I am a huge believer in good default values for apps but sometimes you
just gotta customize.


Getting Started
---------------

This pulls the latest from GitHub on a fresh system and then link to each file
you want to use, ex.::

    cd ~
    ln -sf code/dot-files/git/gitconfig .gitconfig
    ...

To use `git submodules`::

    git submodule init
    git submodule update
