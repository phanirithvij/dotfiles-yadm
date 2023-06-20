#!/usr/bin/env bash

IFS=$'\n'
for f in $(ls ~/.config/tmuxp/*.yml ~/.config/tmuxp/*.yaml)
do
  echo $f
  echo "% tmuxp "
done

