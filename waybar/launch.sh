#!/bin/sh

# ----------------------------------------------------- 
# Quit running waybar instances
# ----------------------------------------------------- 
killall waybar

# ----------------------------------------------------- 
# Loading the configuration based on the username
# ----------------------------------------------------- 
if [[ $USER = "raabe" ]]
then
    waybar -c ~/dotfiles/waybar/config & -s ~/dotfiles/waybar/style.css  
else
    waybar &
fi 
