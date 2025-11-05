#!/bin/bash
# Check for updates and display Omarchy logo with color

# Check if updates are available
UPDATES=$(checkupdates 2>/dev/null | wc -l)

# Omarchy icon
ICON="<span font='omarchy'>\ue900</span>"

if [ "$UPDATES" -gt 0 ]; then
    # Updates available - Orange color
    echo "{\"text\":\"$ICON\",\"tooltip\":\"$UPDATES updates available\",\"class\":\"updates\"}"
else
    # No updates - Normal color
    echo "{\"text\":\"$ICON\",\"tooltip\":\"System up to date\",\"class\":\"normal\"}"
fi
