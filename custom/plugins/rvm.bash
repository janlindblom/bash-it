# From https://gist.github.com/3498428

function rvmgo {
  ver=1.9.3
  ver=${1-$ver}

  pwd=${PWD##*/}



  rvm $ver
  if [ $? == 0 ]; then
    # rvm to a non existing version will set $? to 1. However rvm to a non existing gemset in an existing version
    # returns 0 and an onscreen error - so we need to check for the gemset another way
    rvm $ver@$pwd
    gemdir=$(rvm gemset dir)
    if grep -q $pwd <<<$gemdir; then
      echo "Changed to $ver@$pwd"
    else
      rvm gemset create $pwd
      rvm $ver@$pwd
    fi
  fi
}
