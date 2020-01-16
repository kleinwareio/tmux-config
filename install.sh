#!/bin/bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s `dirname "$(readlink -f "$0")"`/.tmux.conf ~/.tmux.conf

tmux source ~/.tmux.conf
