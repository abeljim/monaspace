#!/bin/bash

# remove all fonts from ~/.local/share/fonts that start with "Monaspace"
rm -rf ~/.local/share/fonts/Monaspace*

# make the folder if it does not exist
mkdir -p ~/.local/share/fonts 

# copy all fonts from ./otf to ~/.local/share/fonts
cp ../fonts/otf/* ~/.local/share/fonts

# copy variable fonts from ./variable to ~/.local/share/fonts
cp ../fonts/variable/* ~/.local/share/fonts

# Build font information caches
fc-cache -f
