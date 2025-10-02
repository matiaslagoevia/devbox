#!/bin/sh
# pbcopy replacement using iTerm2 OSC 52 clipboard escape sequence

# Read stdin fully and base64 encode
buf=$(base64 | tr -d '\n')

# Wrap in OSC 52 escape sequence
printf "\033]52;c;%s\a" "$buf"