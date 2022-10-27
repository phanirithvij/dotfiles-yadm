#!/usr/bin/env bash

case "$1" in
  *.tar*) tar tf "$1";;
  *.zip) unzip -l "$1";;
  *.jar) unzip -l "$1";;
  *.apk) unzip -l "$1";;
  *.rar) unrar l "$1";;
  *.7z) 7z l "$1";;
  *.pdf) pdftotext "$1" -;;
  *.json) cat "$1" | jq -C;;
  *) bat "$1" -P --color always --theme gruvbox-dark -p;;
esac

