#!/bin/bash

# Get the config file
SCRIPT_DIR=$(dirname "$0")
source "$SCRIPT_DIR/config"

# Monitor names
EXTERNAL_LEFT="DP-9"
EXTERNAL_CENTER="DP-10"
LAPTOP="eDP-1"

if [[ "$DEVICE_IDENTIFIER" == "work-laptop" ]]; then
    # Check if external monitors are connected
    external_left_connected=$(hyprctl monitors | grep -c "$EXTERNAL_LEFT")
    external_center_connected=$(hyprctl monitors | grep -c "$EXTERNAL_CENTER")

    if [[ "$external_left_connected" -eq 1 && "$external_center_connected" -eq 1 ]]; then
        # Docked: Assign workspaces to externals and laptop
        for ws in {1..7}; do
            hyprctl dispatch moveworkspacetomonitor "$ws $EXTERNAL_CENTER"
        done
        hyprctl dispatch workspace 8
        hyprctl dispatch moveworkspacetomonitor "8 $EXTERNAL_LEFT"
        hyprctl dispatch workspace 9
        hyprctl dispatch moveworkspacetomonitor "9 $LAPTOP"
        # focus on center monitor
        hyprctl dispatch focusmonitor "$EXTERNAL_CENTER"
    else
        # Undocked: Move all workspaces to laptop
        for ws in {1..9}; do
            hyprctl dispatch moveworkspacetomonitor "$ws $LAPTOP"
        done
    fi
fi
