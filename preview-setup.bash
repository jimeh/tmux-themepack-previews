#! /usr/bin/env bash

name=tmuxthemepack-previews

tmux -L "$name" kill-server
tmux -L "$name" new-session -d -s other
tmux -L "$name" new-session -d -s test
tmux -L "$name" new-session -d -s themes -n main
tmux -L "$name" new-window
tmux -L "$name" new-window
tmux -L "$name" select-window -t themes:0
tmux -L "$name" split-window -t themes -h
tmux -L "$name" split-window -t themes -v
tmux -L "$name" clock -t themes
tmux -L "$name" select-pane -t themes:0.1
tmux -L "$name" choose-tree -s
tmux -L "$name" attach -t themes
