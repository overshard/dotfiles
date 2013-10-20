echo "========================================================================="
echo "                   ___           ___           ___           ___         "
echo "     ___          /  /\         /  /\         /  /\         /  /\        "
echo "    /  /\        /  /:/_       /  /::\       /  /::\       /  /:/        "
echo "   /  /:/       /  /:/ /\     /  /:/\:\     /  /:/\:\     /  /:/         "
echo "  /__/::\      /  /:/ /::\   /  /:/~/::\   /  /:/~/::\   /  /:/  ___     "
echo "  \__\/\:\__  /__/:/ /:/\:\ /__/:/ /:/\:\ /__/:/ /:/\:\ /__/:/  /  /\    "
echo "     \  \:\/\ \  \:\/:/~/:/ \  \:\/:/__\/ \  \:\/:/__\/ \  \:\ /  /:/    "
echo "      \__\::/  \  \::/ /:/   \  \::/       \  \::/       \  \:\  /:/     "
echo "      /__/:/    \__\/ /:/     \  \:\        \  \:\        \  \:\/:/      "
echo "      \__\/       /__/:/       \  \:\        \  \:\        \  \::/       "
echo "                  \__\/         \__\/         \__\/         \__\/        "
echo "========================================================================="
echo "Setting up dot-files..."
echo "========================================================================="


echo "========================================================================="
echo "Setting up links in home dir..."
echo "========================================================================="
cd /home/isaac
ln -s code/dot-files/git/gitconfig .gitconfig
ln -s code/dot-files/tmux/tmux.conf .tmux.conf
ln -s code/dot-files/vim/vim .vim
ln -s code/dot-files/vim/vimrc .vimrc
ln -s code/dot-files/bash/bash_profile .bash_profile
ln -s code/dot-files/bash/bashrc .bashrc
ln -s code/dot-files/bash/bash_aliases .bash_aliases
ln -s code/dot-files/lftp .lftp

