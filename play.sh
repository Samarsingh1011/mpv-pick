#!/usr/bin/env bash 

declare -A music
# music["title"]="link"

input=$(for i in "${!music[@]}"; do echo "$i"; done | fzf)

echo $input
if [ -z "$input"]; then
    exit
else
    mpv --no-video "${music[$input]}"
fi
