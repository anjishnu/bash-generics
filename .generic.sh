# Useful shortcuts

function refresh(){
    source ~/.bashrc
}

function col {
  awk -F '\t' -v col=$1 '{print $col}'
}

function skip {
    n=$(($1 + 1))
    cut -d' ' -f$n-
}

function find_file {

    find . -iname '*'$1'*'

}

function find_text {
    grep -rin $1 $2
}

function cd() { builtin cd "$@" && ls; }

# |Useful Keybindings|
if test -n "$ZSH_VERSION"; then

    bindkey "\e\e[D" backward-word
    bindkey "\e\e[C" forward-word

elif test -n "$BASH_VERSION"; then

    bind '"\e\e[D": backward-word'
    bind '"\e\e[C": forward-word'

fi

# Useful other bash files
source ~/.bashmarks.sh
source ~/.tmux.sh
