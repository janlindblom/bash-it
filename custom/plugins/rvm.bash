# From https://gist.github.com/3505088

function rvmgo {
    typeset ver pwd
    ver=${1:-1.9.3}
    pwd=${PWD##*/}

    rvm use $ver@$pwd --create
}

