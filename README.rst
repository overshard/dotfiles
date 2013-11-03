dot-files
=========

The various dot-files I use on my development linux server, I don't like to do
much as I am a huge believer in good default values for apps but sometimes you
just gotta customize.


Getting Started
---------------

This pulls the latest from GitHub on a fresh system and then runs setup::

    curl "https://raw.github.com/overshard/dot-files/master/bootstrap.sh" | sh

If you already have the repo pulled you can run::

    ./setup.sh


Submodules
----------

I use a few various submodules for vim bundles. To install them after the git
clone run::

    git submodule update --init

