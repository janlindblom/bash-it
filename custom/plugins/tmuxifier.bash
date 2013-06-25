
if [ -d $HOME/.tmuxifier ];
then
	 PATH="$HOME/.tmuxifier/bin:$PATH"
	 eval "$(tmuxifier init -)"
	 export TMUXIFIER_LAYOUT_PATH="$HOME/.tmux-layouts"
fi

