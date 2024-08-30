# Bash-Builder provides some syntax sugar macros for putting names on
#  positional arguments. The rest remain in the "$@" array variable
$%function hello:greet(name) {
    echo "$name"
}

