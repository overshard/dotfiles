echo "================================================================================"
echo "                       ___           ___           ___           ___            "
echo "         ___          /  /\         /  /\         /  /\         /  /\           "
echo "        /  /\        /  /:/_       /  /::\       /  /::\       /  /:/           "
echo "       /  /:/       /  /:/ /\     /  /:/\:\     /  /:/\:\     /  /:/            "
echo "      /__/::\      /  /:/ /::\   /  /:/~/::\   /  /:/~/::\   /  /:/  ___        "
echo "      \__\/\:\__  /__/:/ /:/\:\ /__/:/ /:/\:\ /__/:/ /:/\:\ /__/:/  /  /\       "
echo "         \  \:\/\ \  \:\/:/~/:/ \  \:\/:/__\/ \  \:\/:/__\/ \  \:\ /  /:/       "
echo "          \__\::/  \  \::/ /:/   \  \::/       \  \::/       \  \:\  /:/        "
echo "          /__/:/    \__\/ /:/     \  \:\        \  \:\        \  \:\/:/         "
echo "          \__\/       /__/:/       \  \:\        \  \:\        \  \::/          "
echo "                      \__\/         \__\/         \__\/         \__\/           "
echo "================================================================================"


echo "================================================================================"
echo "Setting up links in home dir..."
echo "================================================================================"
cd /home/isaac
ln -s code/isaac/dot-files/git/gitconfig .gitconfig
ln -s code/isaac/dot-files/tmux/tmux.conf .tmux.conf
ln -s code/isaac/dot-files/vim/vim .vim
ln -s code/isaac/dot-files/vim/vimrc .vimrc
ln -s code/isaac/dot-files/vim/vimrc .vimrc
ln -s code/isaac/dot-files/bash/bash_aliases .bash_aliases
ln -s code/isaac/dot-files/lftp .lftp
