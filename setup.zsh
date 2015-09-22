#!/usr/bin/zsh
printf "Updating submodules. Please wait..."
git submodule update --init --recursive --remote
printf "done\n"

vared -p "Install tmux config? [yes]/no " -c tmux
vared -p "Install Xresources? yes/[no] " -c xresources
vared -p "Install i3 config? yes/[no] " -c i3
vared -p "Install extra X application config? yes/[no] " -c extra
vared -p "Install termite config? yes/[no] " -c termite

if [[ ! -a $HOME/.config ]]; then
	mkdir $HOME/.config
fi

ln -s $PWD/.oh-my-zsh $HOME/.oh-my-zsh
ln -s $PWD/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ln -s $PWD/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
ln -s $PWD/.config/base16-shell $HOME/.config/base16-shell
ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.promptline.zsh $HOME/.promptline.zsh
cp $PWD/.zshrc.local $HOME/.zshrc.local
echo "Installed zsh config"

ln -s $PWD/.vim $HOME/.vim
echo "Installed vim config"

if [[ $tmux != "no" ]]; then
	ln -s $PWD/.tmux.conf $HOME/.tmux.conf
	ln -s $PWD/.tmuxline.conf $HOME/.tmuxline.conf
	echo "Installed tmux config"
fi

if [[ $xresources == "yes" ]]; then
	ln -s $PWD/.Xresources $HOME/.Xresources
	echo "Installed Xresources"
fi

if [[ $i3 == "yes" ]]; then
	ln -s $PWD/.i3 $HOME/.i3
	ln -s $PWD/.i3status.conf $HOME/.i3status.conf
	echo "Installed i3 config"
fi


if [[ $extra == "yes" ]]; then
	ln -s $PWD/.config/compton.conf $HOME/.config/compton.conf
	ln -s $PWD/.config/dunst $HOME/.config/dunst
	echo "Installed extra X applications config"
fi

if [[ $termite == "yes" ]]; then
	ln -s $PWD/.config/termite $HOME/.config/termite
	echo "Installed termite config"
fi

