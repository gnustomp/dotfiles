#!/usr/bin/env zsh
printf "Updating submodules. Please wait..."
git submodule update --init --recursive --remote
printf "done\n"

vared -p "redshift config? yes/[no] " -c redshift

if [[ ! -a $HOME/.config ]]; then
	mkdir $HOME/.config
fi

ln -s $PWD/.zprezto $HOME/.zprezto
cp $PWD/prompt_gs_setup $PWD/.zprezto/modules/prompt/functions/
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
	  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
rm $HOME/.zpreztorc
rm $HOME/.zprofile
cp $PWD/.zpreztorc $HOME/.zpreztorc
cp $PWD/.zprofile $HOME/.zprofile
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

