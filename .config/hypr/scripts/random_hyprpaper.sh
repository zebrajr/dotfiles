#!/usr/bin/env bash

# Source the config file from the same directory as the script
SCRIPT_DIR=$(dirname "$0")
source "$SCRIPT_DIR/config"

CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"
