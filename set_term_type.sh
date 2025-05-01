#!/bin/bash

set -euo pipefail

readonly COLORS=$(tput colors)

if [[ "$COLORS" -ge 256 ]]; then
    export TERM="xterm-256color"
fi


if [[ -v TMUX ]]; then
    export TERM="tmux-256color"
    exit 0
fi
