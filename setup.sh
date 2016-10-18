echo "========================================================================="
echo "Setting up links in home dir..."
echo "========================================================================="
cd ~/
ln -fs code/dot-files/git/gitconfig .gitconfig
ln -fs code/dot-files/tmux/tmux.conf .tmux.conf
ln -fs code/dot-files/vim/vim .vim
ln -fs code/dot-files/vim/vimrc .vimrc

