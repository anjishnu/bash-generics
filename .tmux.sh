# Tmux shortcuts

function detach_tmux(){
    tmux detach
    }

function tmux_named(){
    # Create new sessions with name
    tmux new -s $1    
}

function tmux_attach_named(){
    # Attach to a named session
    tmux a -t $1
}

function tmux_attach_last(){
    tmux attach-session
    }

function tmux_ls(){
    tmux ls
}

function tmux_kill_named(){
    # Kill session bt name
    tmux kill-session -t $1
    }

function tmux_kill(){
    tmux kill-session 
}

function tmux_killall(){
    tmux kill-server
}
