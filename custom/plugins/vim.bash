
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

