function fucking { sudo $@; }

# Returns the number of times $1 appears in $PATH. (Exit status: 0=found, 1=not found)
function pathInPath {
  echo $PATH | tr ':' '\n' | grep -x -c $1
}

# Remove duplicate entries from $PATH without altering the order
function uniquePath {
  echo $PATH | tr ':' '\n' | awk '!x[$0]++' | tr '\n' ':' | sed -e 's/:$//g' -e 's/^://g'
}

