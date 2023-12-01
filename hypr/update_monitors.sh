#!/bin/bash

# Check if two command-line arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 HDMI_NUMBER DP_NUMBER"
    exit 1
fi

# Assign command-line arguments to variables
HDMI_NUMBER=$1
DP_NUMBER=$2

# Define the configuration file path
CONF_FILE="$HOME/.config/hypr/monitors.conf"

# Create a backup of the original configuration file
cp "$CONF_FILE" "$CONF_FILE.bak"

# Update the HDMI and DP lines in the configuration file
# sed -i "s/monitor=HDMI-A-1,/monitor=HDMI-A-$HDMI_NUMBER,/" "$CONF_FILE"
# sed -i "s/monitor=DP-1,/monitor=DP-$DP_NUMBER,/" "$CONF_FILE"

# Update the HDMI and DP lines in the configuration file if they are not commented
sed -i "/^#.*monitor=HDMI-A-$HDMI_NUMBER,/! s/monitor=HDMI-A-[0-9]*,/monitor=HDMI-A-$HDMI_NUMBER,/" "$CONF_FILE"
sed -i "/^#.*monitor=DP-$DP_NUMBER,/! s/monitor=DP-[0-9]*,/monitor=DP-$DP_NUMBER,/" "$CONF_FILE"

echo "Configuration updated for HDMI-A-$HDMI_NUMBER and DP-$DP_NUMBER"


# Update waybar configuration
JSON_FILE="$HOME/.config/waybar/config"

# Update the "output" value in the JSON file
sed -i "s/\"output\": \"DP-[0-9]*\",/\"output\": \"DP-$DP_NUMBER\",/" "$JSON_FILE"


echo "Configuration updated in waybar"

swww img /home/shiva/Pictures/SlideShow/space-ppl.jpg

