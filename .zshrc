#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

stty -ixon

left() {
	if [ ! -z $VIRTUAL_ENV ]; then
		echo "(`basename $VIRTUAL_ENV`) "
	fi
}
PROMPT_LEAN_LEFT=left
