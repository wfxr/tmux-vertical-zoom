#!/usr/bin/env bash
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# $1: option
# $2: default value
tmux_get() {
    local value
    value="$(tmux show -gqv "$1")"
    [ -n "$value" ] && echo "$value" || echo "$2"
}

key="$(tmux_get '@vertical-zoom-key' 'Z')"

tmux unbind-key "$key" 2>/dev/null
tmux bind-key "$key" run-shell "$SCRIPT_DIR/zoom.sh"
