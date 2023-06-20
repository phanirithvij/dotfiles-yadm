#!/usr/bin/env bash

echo "Saving installed packages to config dir"

pacman -Qqmet > ~/.config/yay/aurpkgs.txt
pacman -Qqet > ~/.config/yay/all.txt

yadm add ~/.config/yay

