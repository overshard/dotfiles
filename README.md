# dot-files

The various dot-files I use on my development linux server, I don't like to do
much as I am a huge believer in good default values for apps but sometimes you
just gotta customize.


## Getting Started

This pulls the latest from GitHub commit on a fresh system and then links to each
file:

    curl https://github.com/overshard/dot-files/edit/master/bootstrap.sh | sh

## Manual Links

You can pull this repo and indivdually links to each config file you want to
use.

    cd ~
    ln -sf code/overshard/dot-files/git/gitconfig .gitconfig
    ...
