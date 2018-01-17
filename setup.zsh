#!/usr/bin/env zsh
printf "Updating submodules. Please wait..."
git submodule update --init --recursive --remote
printf "done\n"

ln -s $PWD/.zim $HOME/.zim
cp $PWD/.zimrc $HOME/.zimrc
cp $PWD/.zshenv $HOME/.zshenv
cp $PWD/.zshrc $HOME/.zshrc
cp $PWD/.zlogin $HOME/.zlogin
echo "Installed zsh config"

ln -s $PWD/.vim $HOME/.vim
touch $HOME/.vim/dirs.vimrc
echo "Installed vim config"

if command -v nvim > /dev/null 2>&1; then
	mkdir -p $HOME/.config/nvim
	mkdir -p $HOME/.local/share/nvim/site

	ln -s $HOME/.vim/vimrc $HOME/.config/nvim/init.vim
	ln -s $HOME/.vim/pack $HOME/.local/share/nvim/site/pack
	echo "Installed neovim config"
else
	echo "Did not install neovim config"
fi

if command -v tmux > /dev/null 2>&1; then
	ln -s $PWD/.tmux.conf $HOME/.tmux.conf
	ln -s $PWD/.tmuxline.conf $HOME/.tmuxline.conf
	echo "Installed tmux config"
else
	echo "Did not install tmux config"
fi
