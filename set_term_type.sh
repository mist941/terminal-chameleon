#!/bin/bash

set -euo pipefail

if [[ ! -v TERM ]] || ! command -v tput &>/dev/null; then
    echo "Skipping terminal setup: missing TERM or tput"
    exit 0
fi

if [[ -v TMUX ]]; then
    export TERM="tmux-256color"
    exit 0
fi

if [[ -v STY ]]; then
    export TERM="screen-256color"
    exit 0
fi

if [[ ! -v TMUX && ! -v STY ]]; then
    if [[ $(tput colors) -ge 256 ]]; then
        export TERM="xterm-256color"
        exit 0
    fi
fi
