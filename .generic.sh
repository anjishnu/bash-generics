# Useful shortcuts

function refresh(){
    source ~/.bashrc
}

function col {
  awk -v col=$1 '{print $col}'
}

function skip {
    n=$(($1 + 1))
    cut -d' ' -f$n-
}

function find-file {
    find . -iname '*'$1'*'
}

function find-text {
    grep -rin $1 $2
}

function cd() { builtin cd "$@" && ls; }


# |Useful Keybindings|

bind '"\e\e[D": backward-word' # For Mac, move 1 word backward with (Opt) + (->)
bind '"\e\e[C": forward-word'  # For Mac, move 1 word forwards with (Opt) + (<-)

# Useful other bash files
source ~/bashmarks.sh
