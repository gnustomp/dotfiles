#!/usr/bin/zsh
git submodule init
git submodule update
ln -s $PWD/.oh-my-zsh $HOME/.oh-my-zsh
ln -s $PWD/.zsh-syntax-highlighting .oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.vimrc $HOME/.vimrc
ln -s $PWD/.vim $HOME/.vim
ln -s $PWD/.tmux.conf $HOME/.tmux.conf
ln -s $PWD/.tmuxline.conf $HOME/.tmuxline.conf
ln -s $PWD/.Xresources $HOME/.Xresources
