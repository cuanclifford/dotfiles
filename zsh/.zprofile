# Xorg start
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

# MPD start
[ ! -s ~/.config/mpd/pid ] && mpd

# Ruby Version Manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
