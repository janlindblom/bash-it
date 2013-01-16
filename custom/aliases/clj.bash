
# These are aliases for Clojure and Leiningen.

alias ldeps='lein deps'
alias lsp='lein spec'
alias lsa='lein spec -a'
alias lr='lein repl'
alias lrn='lein run'
alias lrm='lein run -m'
alias lrs='lein ring server'
alias lcljs='lein cljsbuild auto'

function lein-help() {
	alias | grep -w lein | sort
}

