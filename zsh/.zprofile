# Xorg start
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

# MPD start
[ ! -s ~/.config/mpd/pid ] && mpd

export PATH="$HOME/.cargo/bin:$PATH"
