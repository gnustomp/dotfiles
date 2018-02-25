#!/usr/bin/env zsh
printf "Updating submodules. Please wait..."
git submodule update --init --recursive --remote
echo "done"

DOTFILES=`pwd`
cd $HOME

ln -Ts $DOTFILES/.zim .zim
cp $DOTFILES/.zimrc .zimrc
cp $DOTFILES/.zshenv .zshenv
cp $DOTFILES/.zshrc .zshrc
cp $DOTFILES/.zlogin .zlogin
echo "Installed zsh config"

ln -Ts $DOTFILES/.vim .vim
touch .vim/dirs.vimrc
echo "Installed vim config"

if command -v nvim > /dev/null 2>&1; then
	mkdir -p .config/nvim
	mkdir -p .local/share/nvim/site

	ln -Ts .vim/vimrc .config/nvim/init.vim
	ln -Ts .vim/pack .local/share/nvim/site/pack
	echo "Installed neovim config"
else
	echo "Did not install neovim config"
fi

if command -v tmux > /dev/null 2>&1; then
	ln -Ts $DOTFILES/.tmux.conf .tmux.conf
	ln -Ts $DOTFILES/.tmuxline.conf .tmuxline.conf
	echo "Installed tmux config"
else
	echo "Did not install tmux config"
fi
