
# These are aliases for Clojure and Leiningen.

alias ldeps='lein deps'
alias lsp='lein spec'
alias lsa='lein spec -a'
alias lr='lein repl'

function lein-help() {
	alias | grep -w lein | sort
}

