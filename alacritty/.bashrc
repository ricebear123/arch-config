#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fetch='\fastfetch --logo Endeavour --logo-padding-top 6 --logo-padding-left 2 --logo-padding-right 2'

export PATH="$HOME/.cargo/bin/$PATH"

PS1='[\u@\h \W]\$ '

fastfetch --logo Endeavour --logo-padding-top 6 --logo-padding-left 2 --logo-padding-right 2
##-----------------------------------------------------
## synth-shell-greeter.sh
#if [ -f /home/ricebear/.config/synth-shell/synth-shell-greeter.sh ] && [ -n "$( echo $- | grep i )" ]; then
#	source /home/ricebear/.config/synth-shell/synth-shell-greeter.sh
#fi

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/ricebear/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ricebear/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
if [ -f /home/ricebear/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ricebear/.config/synth-shell/better-ls.sh
fi

##-----------------------------------------------------
## alias
if [ -f /home/ricebear/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ricebear/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
## better-history
if [ -f /home/ricebear/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ricebear/.config/synth-shell/better-history.sh
fi
. "$HOME/.cargo/env"
export EDITOR=nvim
