#!/bin/bash
SESSION=$USER

tmux new-session -d -s $SESSION


tmux rename-window -t 0 "builder"
tmux select-window -t 0
tmux send-keys "cd build/debug; clear" C-m
tmux new-window -t $SESSION:1 -n "editor"
tmux select-window -t 1
tmux send-keys "cd src; clear" C-m

tmux attach-session -t $SESSION
