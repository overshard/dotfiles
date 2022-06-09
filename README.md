# dotfiles

The various dotfiles I use on my development linux server, I don't like to do
much now days as I am a huge believer in using defaults to lower configuration
issues and be able to help my peers easier. Butsometimes you just gotta
customize..


## Getting Started

This pulls the latest from GitHub commit on a fresh system and then links to each
file, please review the script before running it:

    curl -o- https://raw.githubusercontent.com/overshard/dotfiles/master/bootstrap.sh | bash


## VS Code Extensions

To get your current extensions for VS Code:

    code --list-extensions > extensions.txt

To install extensions on Linux and MacOS:

    cat extensions.txt | xargs -L 1 echo code --install-extension

To install extensions on Windows:

    type extensions.txt | % { "code --install-extension $_" }
