#!/usr/bin/env bash

echo "Installing packages based on config dir ~/.config/yay/all.txt"

yay -S $(cat ~/.config/yay/aurpkgs.txt)
pacman -S $(cat ~/.config/yay/all.txt)


