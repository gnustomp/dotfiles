#!/usr/bin/env zsh
printf "Updating submodules. Please wait..."
git submodule update --init --recursive --remote
printf "done\n"

if [[ ! -a $HOME/.config ]]; then
	mkdir $HOME/.config
fi

ln -s $PWD/.zim $HOME/.zim
ln -s $PWD/prompt_gs_setup $PWD/.zim/modules/prompt/functions/prompt_gs_setup
setopt EXTENDED_GLOB
cp $PWD/.zimrc $HOME/.zimrc
cp $PWD/.zshenv $HOME/.zshenv
cp $PWD/.zshrc $HOME/.zshrc
cp $PWD/.zlogin $HOME/.zlogin
echo "Installed zsh config"

ln -s $PWD/.vim $HOME/.vim
echo "Installed vim config"

if command -v tmux > /dev/null 2>&1; then
	ln -s $PWD/.tmux.conf $HOME/.tmux.conf
	ln -s $PWD/.tmuxline.conf $HOME/.tmuxline.conf
	echo "Installed tmux config"
else
	echo "Did not install tmux config"
fi
