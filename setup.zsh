#!/usr/bin/zsh
git submodule update --init --recursive --remote

ln -s $PWD/.oh-my-zsh $HOME/.oh-my-zsh
ln -s $PWD/.zsh-syntax-highlighting .oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.vim $HOME/.vim
ln -s $PWD/.tmux.conf $HOME/.tmux.conf
ln -s $PWD/.tmuxline.conf $HOME/.tmuxline.conf
ln -s $PWD/.Xresources $HOME/.Xresources
ln -s $PWD/.i3 $HOME/.i3
ln -s $PWD/.i3status.conf $HOME/.i3status.conf

if [[ ! -a $HOME/.config ]]; then
	mkdir $HOME/.config
fi

ln -s $PWD/.config/compton.conf $HOME/.config/compton.conf
ln -s $PWD/.config/dunst $HOME/.config/dunst
ln -s $PWD/.config/base16-shell $HOME/.config/base16-shell
ln -s $PWD/.config/termite $HOME/.config/termite

cp $PWD/.zshrc.local $HOME/.zshrc.local

