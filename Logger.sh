#!/bin/zsh
# File to log your learnings
LOG_FILE=~/Documents/my_vault/Log.md
# Workspace number where you want to run vim (1 is the first workspace)
WORKSPACE_NUM=0
while true; do
    # Wait for 25 minutes (1500 seconds)
    sleep 1500
    # Append the current date and time to the log file
    echo -e "\n$(date)" >> "$LOG_FILE"
    # Switch to the specified workspace
    wmctrl -s $WORKSPACE_NUM
    # Open the log file in vim using qterminal
    vim ~/Documents/my_vault/Log.md
    # Bring the terminal to the foreground
    sleep 0.5  # Wait for the terminal to open
    xdotool search --onlyvisible --class qterminal windowactivate
done
