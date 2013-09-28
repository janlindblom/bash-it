
if [ -d /usr/local/Cellar/macvim/7.4-70/MacVim.app/Contents/MacOS/ ]; then
	PATH=$PATH:/usr/local/Cellar/macvim/7.4-70/MacVim.app/Contents/MacOS/
fi

function svim() {
	if [ -f Session.vim ]
	then
		vim -S Session.vim "$@"
	else
		vim "$@"
	fi
}

function pvim() {
	if [ -f project.vim ]
	then
		vim -S project.vim "$@"
	else
		vim "$@"
	fi
}

