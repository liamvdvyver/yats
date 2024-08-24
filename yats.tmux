#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sessioniser_bind_opt_name="@sessionise-bind"
harpooniser_append_bind_opt_name="@harpooniser_append_bind"
harpooniser_edit_bind_opt_name="harpooniser_edit_bind"

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

tmux bind-key "$(get_tmux_option "$harpooniser_append_bind_opt_name" "M")" display-popup -E "$CURRENT_DIR/scripts/tmux-harpooniser append"
tmux bind-key "$(get_tmux_option "$harpooniser_edit_bind_opt_name" "m")" display-popup -E "$CURRENT_DIR/scripts/tmux-harpooniser edit"
