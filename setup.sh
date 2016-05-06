#!/usr/bin/env zsh
printf "Updating submodules. Please wait..."
git submodule update --init --recursive --remote
printf "done\n"

vared -p "redshift config? yes/[no] " -c redshift

if [[ ! -a $HOME/.config ]]; then
	mkdir $HOME/.config
fi

ln -s $PWD/.zprezto $HOME/.zprezto
cp $PWD/.zpreztorc $HOME/.zprezto/runcoms/zpreztorc
cp $PWD/.zshrc $HOME/.zshrc
echo "Installed zsh config"

ln -s $PWD/.vim $HOME/.vim
echo "Installed vim config"

if command -v tmux > /dev/null 2>&1; then
	ln -s $PWD/.tmux.conf $HOME/.tmux.conf
	ln -s $PWD/.tmuxline.conf $HOME/.tmuxline.conf
	echo "Installed tmux config"
fi

if [[ $redshift == "yes" ]]; then
	ln -s $PWD/.config/redshift.conf $HOME/.config/redshift.conf
	echo "Installed redshift config"
fi

