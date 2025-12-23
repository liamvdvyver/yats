#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sessioniser_bind_opt_name="@sessionise-bind"

# From https://github.com/tmux-plugins/tmux-sessionist
get_tmux_option() {
    local option=$1
    local default_value=$2
    local option_value=$(tmux show-option -gqv "$option")
    if [ -z "$option_value" ]; then
        echo "$default_value"
    else
        echo "$option_value"
    fi
}

tmux bind-key "$(get_tmux_option "$sessioniser_bind_opt_name" "S")" display-popup -E "$CURRENT_DIR/scripts/tmux-sessioniser"
