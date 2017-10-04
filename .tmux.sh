# Tmux shortcuts

function detach-tmux(){
    tmux detach
    }

function tmux-named-session(){
    # Create new sessions with name
    tmux new -s $1    
}

function tmux-attach-named(){
    # Attach to a named session
    tmux a -t $1
}

function tmux-attach-last(){
    tmux attach-session
    }

function tmux-ls(){
    tmux ls
}

function tmux-kill-named(){
    # Kill session bt name
    tmux kill-session -t $1
    }

function tmux-kill(){
    tmux kill-session 
}

function tmux-killall(){
    tmux kill-server
}
