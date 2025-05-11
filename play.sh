#!/usr/bin/env bash 

declare -A music
# music["title"]="link"

input=$(for i in "${!music[@]}"; do echo "$i"; done | fzf)

echo $input

mpv --no-video "${music[$input]}"
