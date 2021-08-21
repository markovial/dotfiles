#!/bin/bash

# Load display manager
exec i3

# Start IBus for languages
ibus-daemon -drx

# Load key remaps
xmodmap .Xmodmap

# Load Xresources file
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

