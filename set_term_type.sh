#!/bin/bash

set -euo pipefail

if [[ -v TMUX ]]; then
    echo "tmux detected"
fi

if [[ -v SSH_CONNECTION ]]; then
    echo "ssh conntection detected"
fi
    
