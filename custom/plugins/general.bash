
CLICOLOR=1
PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

ff() { find . -name "$@" -print; }
lll() { ls -laF "$@" | less; }
ds() { du -ak "$@" | sort -r -n | less; }
psg() { ps ax | grep "$@" | grep -v grep; }
rmbak() { find . -name \*~ -delete; }
tds() { t ls "$@" | sort; }

mkcd() {
	mkdir -p "$*"
	cd "$*"
}

afor() {
	alias | grep -w "$*" | sort
}

topp() {
	fields=${1:-1}
	cut -f$fields -d" " $HOME/.bash_history | sort | uniq -c | sort -nr | head -n 30
}

cdls() {
	cd "$@"
	ls
}

fdn() {
	dir="$1"
	shift
	find $dir -name "$@"
}

export CLICOLOR

